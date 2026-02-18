from pathlib import Path
import re
import pickle
from collections import defaultdict

from src.counterfactual_analysis import cfc_helper
from src.simulators import simulator_virtualhome

class VH_Task():
	def __init__(self, task, description, plan, preconditions=None):
		self.task = task
		self.description = description
		self.preconditions = preconditions
		self.plan = plan

	def get_objects(self):
		object_names = set()
		for action in self.plan:
			if len(action.objects) > 0:
				object_names.add(re.sub(r'[^A-Za-z0-9]', '', action.objects[0]))
		return object_names

	def get_actions(self):
		actions = []
		for action in self.plan:
			if action.action.lower() == "putback":
				actions.append(cfc_helper.Action(action.time, action.action.lower(), action.objects[1].lower()))
			elif len(action.objects) > 0:
				actions.append(cfc_helper.Action(action.time, action.action.lower(), action.objects[0].lower()))
			else:
				actions.append(cfc_helper.Action(action.time, action.action.lower(), None))
		return actions


class Action:
	def __init__(self, time, action, objects=None):
		if objects is None:
			objects = []
		self.time = time
		self.action = action
		self.objects = objects

	def print(self):
		object = ""
		if isinstance(self.objects, list):
			for o in self.objects:
				object += o + ", "
			object = object.rstrip(", ")
		elif isinstance(self.objects, str):
			object = self.objects
		print(str(self.time) + ") [" + self.action + "] " + object)

def format_for_vecsr_tasks(predicates, lists, objects, task):
	def format_item(item):
		# Nested list → [a, b]
		if isinstance(item, list):
			return "[" + ", ".join(item) + "]"
		# Atom
		return item

	task_literal = fix_unsafe_literals(re.sub(r'[^A-Za-z ]', '', task)
	                                   .lower()
	                                   .replace(" ", "_")
	                                   .replace("\n", ""))
	type_predicate_list = ""
	variable_list = "["
	get_relevant = ""
	complete_task = ""
	formatted_preds = []

	for pred, items in zip(predicates, lists):
		if items:
			inner = ", ".join(format_item(i) for i in items)
			formatted_preds.append(f"{pred}([{inner}])")
		else:
			formatted_preds.append(f"{pred}([])")

	final_state = "[" + ", ".join(formatted_preds) + "]"
	for object in objects:
		name_only = re.sub(r'\d+', '', object)
		name_only = name_only.replace("_", "")
		name_only = fix_unsafe_literals(name_only)
		if "room" in name_only or name_only in ["kitchen", "homeoffice", "entrancehall"]:
			final_state = final_state.replace(", " + object + ", ", "").replace(", " + object, "").replace(object + ", ", "").replace(object, "")
			continue
		variable_version = object.upper()
		type_predicate_list = type_predicate_list + "type(" + variable_version + ", " + name_only + "), "
		final_state = final_state.replace(object, variable_version)
		variable_list = variable_list + variable_version + ", "
	type_predicate_list = type_predicate_list.rstrip(", ")
	variable_list = variable_list.rstrip(", ") + "]"
	if variable_list != "[]":
		get_relevant = "get_relevant(" + task_literal + ", " + variable_list + ") :-\n\t" + type_predicate_list + "."
		complete_task = "complete_task(" + task_literal + ", P) :-\n\t" + type_predicate_list + ",\n\t" + "transform(" + final_state + ", P)."
		return get_relevant + "\n" + complete_task
	else:
		return ""

def compile_predicate_lists(facts_str):
	base_predicates = [
		"close",
		"holds",
		"sat_on",
		"on_top_of",
		"inside",
		"on",
		"laid_on",
		"used",
		"eaten"
	]

	predicate_map = {
		"held": "holds",
		"sat_on": "sat_on",
		"on": "on",
		"close": "close",
		"ontopof": "on_top_of"
	}

	# Predicates that preserve multiple arguments
	multi_arg_predicates = {"on_top_of"}

	# For binary predicates, which argument to keep (0-based, ignoring time)
	arg_selection = {
		"close": 0   # take FIRST argument instead of second
	}

	collected = defaultdict(list)
	seen_predicates = set()

	pattern = re.compile(r"(\w+)\(([^)]+)\)\.")

	def add_unique(lst, item):
		if item not in lst:
			lst.append(item)

	for match in pattern.finditer(facts_str):
		pred, args = match.groups()
		args = [a.strip() for a in args.split(",")]

		out_pred = predicate_map.get(pred, pred)
		seen_predicates.add(out_pred)

		# Multi-argument predicate (ignore time)
		if out_pred in multi_arg_predicates and len(args) >= 3:
			add_unique(collected[out_pred], args[:-1])

		# Unary predicate
		elif len(args) == 2:
			add_unique(collected[out_pred], args[0])

		# Binary predicate
		elif len(args) == 3:
			idx = arg_selection.get(out_pred, 1)  # default = second argument
			add_unique(collected[out_pred], args[idx])

	optional_preds = sorted(seen_predicates - set(base_predicates))
	full_predicate_order = base_predicates + optional_preds

	result = [collected.get(pred, []) for pred in full_predicate_order]
	return result, full_predicate_order

def parse_command(s):
	result = []
	# Extract action
	action_match = re.search(r"\[(.*?)\]", s)
	if action_match:
		result.append(action_match.group(1))

	# Extract parameters
	param_matches = re.findall(r"<([^>]+)>\s*\((\d+)\)", s)
	for name, number in param_matches:
		result.append(f"{name}{number}")

	return result

def pickle_virtualhome_data():
	tasks_folder = "src/programs_processed_precond_nograb_morepreconds/withoutconds"
	# tasks_folder = "src/programs_processed_precond_nograb_morepreconds/test_task"
	preconditions_folder = "src/programs_processed_precond_nograb_morepreconds/initstate"
	# preconditions_folder = "src/programs_processed_precond_nograb_morepreconds/test_cond"
	tasks = {}
	key_add = 0
	for path in Path(tasks_folder).rglob("*"):
		if path.is_file():
			with open(path, "r", encoding="utf-8") as file:
				lines = file.readlines()
				task = lines[0]
				desc = lines[1]
				lines.pop(0)
				lines.pop(0)
				while lines[0].isspace():
					lines.pop(0)
				actions = []
				time = 1
				for line in lines:
					action = parse_command(line)
					if len(action) == 0:
						continue
					if len(action) == 1:
						actions.append(Action(time, action[0]))
					else:
						a = action[0]
						action.pop(0)
						cleaned_actions = [s.replace("_", "") for s in action]
						actions.append(Action(time, a, objects=cleaned_actions))
					time = time + 1
				tasks[Path(path).stem + str(key_add)] = VH_Task(task, desc, actions)
				key_add += 1
	# for path in Path(preconditions_folder).rglob("*"):
	# 	if path.is_file():
	# 		with open(path, "r", encoding="utf-8") as file:
	# 			lines = file.read()
				# TODO: read preconditions
	pickle.dump(tasks, open("src/analogy_learning/vh_tasks_db.pkl", 'wb'))

def unpickle_virtualhome_data():
	loaded = {}
	if Path("src/analogy_learning/vh_tasks_db.pkl").is_file():
		loaded = pickle.load(open("src/analogy_learning/vh_tasks_db.pkl", 'rb'))
	return loaded

def print_virtualhome_data(data):
	for key in data:
		print(key + " " + str(data[key]))
		print(data[key].task)
		print(data[key].description)
		for action in data[key].plan:
			print(str(action.time) + " " + action.action)
			print(action.objects)

def pickle_virtualhome_objects():
	simulator = simulator_virtualhome.VirtualHomeSimulator(environment=0)
	graph = simulator.get_graph()
	objects = {}
	for node in graph["nodes"]:
		if node["class_name"] in objects:
			continue
		objects[node["class_name"]] = cfc_helper.VHObject(node["class_name"], node["id"])
		if "GRABBABLE" in node["properties"]:
			objects[node["class_name"]].grabbable = True
		if "EATABLE" in node["properties"]:
			objects[node["class_name"]].eatable = True
		if "CAN_OPEN" in node["properties"]:
			objects[node["class_name"]].can_open = True
		if "SITTABLE" in node["properties"]:
			objects[node["class_name"]].sittable = True
		if "LIEABLE" in node["properties"]:
			objects[node["class_name"]].lieable = True
		if "MOVABLE" in node["properties"]:
			objects[node["class_name"]].movable = True
		if "SURFACES" in node["properties"]:
			objects[node["class_name"]].surfaces = True
		if "HAS_SWITCH" in node["properties"]:
			objects[node["class_name"]].has_switch = True
		if "ROOMS" == node["category"].upper():
			objects[node["class_name"]].rooms = True
		if "FLOOR"  == node["category"].upper():
			objects[node["class_name"]].floor = True
		if "WALLS" == node["category"].upper():
			objects[node["class_name"]].walls = True
		if "CEILING" == node["category"].upper():
			objects[node["class_name"]].ceiling = True
		if "DECOR" == node["category"].upper():
			objects[node["class_name"]].decor = True
		if "COVER_OBJECT" in node["properties"]:
			objects[node["class_name"]].cover_object = True
		if "LAMPS" == node["category"].upper():
			objects[node["class_name"]].lamps = True
		if "FURNITURE" == node["category"].upper():
			objects[node["class_name"]].furniture = True
		if "CONTAINERS" in node["properties"]:
			objects[node["class_name"]].containers = True
		if "DOORS" == node["category"].upper():
			objects[node["class_name"]].doors = True
		if "PROPS" == node["category"].upper():
			objects[node["class_name"]].props = True
		if "POURABLE" in node["properties"]:
			objects[node["class_name"]].pourable = True
		if "CREAM" in node["properties"]:
			objects[node["class_name"]].cream = True
		if "RECIPIENT" in node["properties"]:
			objects[node["class_name"]].recipient = True
		if "WINDOWS" == node["category"].upper():
			objects[node["class_name"]].windows = True
		if "HAS_PLUG" in node["properties"]:
			objects[node["class_name"]].has_plug = True
		if "ELECTRONICS" == node["category"].upper():
			objects[node["class_name"]].electronics = True
		if "APPLIANCES" == node["category"].upper():
			objects[node["class_name"]].appliances = True
		if "HANGABLE" in node["properties"]:
			objects[node["class_name"]].hangable = True
		if "CLOTHES" in node["properties"]:
			objects[node["class_name"]].clothes = True
		if "LOOKABLE" in node["properties"]:
			objects[node["class_name"]].lookable = True
		if "HAS_PAPER" in node["properties"]:
			objects[node["class_name"]].has_paper = True
		if "CUTTABLE" in node["properties"]:
			objects[node["class_name"]].cuttable = True
		if "READABLE" in node["properties"]:
			objects[node["class_name"]].readable = True
		if "CHARACTERS" == node["category"].upper():
			objects[node["class_name"]].characters = True
		if "FOOD" == node["category"].upper():
			objects[node["class_name"]].food = True
		if "DRINKABLE" in node["properties"]:
			objects[node["class_name"]].drinkable = True
	pickle.dump(objects, open("src/analogy_learning/vh_objects_db.pkl", 'wb'))

def unpickle_virtualhome_objects(use_llm_data=False):
	data = {}
	if Path("src/analogy_learning/vh_objects_db.pkl").is_file():
		data = pickle.load(open("src/analogy_learning/vh_objects_db.pkl", 'rb'))
	if use_llm_data and Path("src/analogy_learning/llm_objects_db.pkl").is_file():
		data = pickle.load(open("src/analogy_learning/llm_objects_db.pkl", 'rb')) | data
	return data

def print_virtualhome_objects(objects):
	for key in objects:
		print(key)
		objects[key].print(properties_only=True)

def fix_unsafe_literals(name):
	"""Replace 'table' with 'tabl' if it is exactly 'table'."""
	to_return = name
	if name == "table":
		to_return = "tabl"
	elif name == "hide":
		to_return = "hides"
	elif name == "compute":
		to_return = "comput"
	return to_return

def generate_task_postconditions():
	plans = unpickle_virtualhome_data()
	# For every plan in the database
	scasp_task_definitions = ""
	plans = {key: value for key, value in sorted(plans.items(), key=lambda item: item[1].task)}
	for plankey in plans:
		# Get all objects in the plan
		objects = plans[plankey].get_objects()
		actions = plans[plankey].get_actions()
		# For every object in plan
		rules = ""
		for object in objects:
			# Turn every object into a cfc VHObject
			name_only = re.sub(r'\d+', '', object)
			name_only = name_only.replace("_", "")
			name_only = fix_unsafe_literals(name_only)
			number_only = re.sub(r"\D", "", object)
			vh_object = cfc_helper.VHObject(name_only, number_only)
			# Use cfc_helper function to get updated object
			info = vh_object.get_scasp(actions=actions, final=True)
			rules = rules + "\n" + info
		# Transform objects into format for task completion
		rules = "\n".join(line for line in rules.splitlines() if line.strip())
		lists, predicates = compile_predicate_lists(rules)
		scasp_task_definitions = scasp_task_definitions + "% " + plans[plankey].task \
		                         + format_for_vecsr_tasks(predicates, lists, objects, plans[plankey].task) + "\n\n"
	with open("scasp_knowledge_base/generated_vh_task_list.pl", "w", encoding="utf-8") as out:
		out.write(scasp_task_definitions)

