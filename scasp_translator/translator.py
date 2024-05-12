from ai2thor.controller import Controller
import subprocess

class Translator():
	def __init__(self, initial_rules=None):
		self.controller = Controller(
			visibilityDistance=3.0,
			scene="FloorPlan1"
		)
		# A prolog rule is represented here as a list of the form:
		# ["name_of_predicate", "parameter1", ..., "parameterN"]
		self.initial_rules = initial_rules
		self.rules = []
		self.objects = {}
		self.knowledge_graph = {}
		self.action_dictionary = {}
		self.populate_action_dictionary()

	def get_metadata(self):
		"""
		This method converts the current state of the AI2-Thor simulation into s(CASP) rules
		These rules are in a Python list format
		"""
		_ = self.controller.step(action="Crouch")
		event = self.controller.step(action="Crouch")
		temporary_objects = {}
		self.rules = self.initial_rules.copy()
		for object in event.metadata["objects"]:
			name = object["name"].lower()
			self.objects[name] = object["objectId"]
			temporary_objects[object["objectId"]] = name
			# Rule: type(ObjectIdentifier, ObjectType)
			self.rules.append([("type", name, object["objectType"].lower())])
			# Rule: visible(VisibleObject)
			if object["visible"]:
				self.rules.append([("visible", name)])
			# Rule: interactable(InteractableObject)
			if object["isInteractable"]:
				self.rules.append([("interactable", name)])
			# Rule: receptacle(ReceptacleObject)
			if object["receptacle"]:
				self.rules.append([("receptacle", name)])
			# Rule: toggleable(ToggleableObject)
			if object["toggleable"]:
				self.rules.append([("toggleable", name)])
			# Rule: toggled(Object)
			if object["isToggled"]:
				self.rules.append([("toggled", name)])
			# Rule: breakable(Object)
			if object["breakable"]:
				self.rules.append([("breakable", name)])
			# Rule: broken(Object)
			if object["isBroken"]:
				self.rules.append([("broken", name)])
			# Rule: canfillwithliquid(Object)
			if object["canFillWithLiquid"]:
				self.rules.append([("canfillwithliquid", name)])
			# Rule: filledwith(Object, Liquid)
			if object["isFilledWithLiquid"]:
				if object["fillLiquid"]:
					self.rules.append([("filledwith", name, object["fillLiquid"].lower())])
			# Rule: dirtyable(Object)
			if object["dirtyable"]:
				self.rules.append([("dirtyable", name)])
			# Rule: dirty(Object)
			if object["isDirty"]:
				self.rules.append([("dirty", name)])
			# Rule: canbeusedup(Object)
			if object["canBeUsedUp"]:
				self.rules.append([("canbeusedup", name)])
			# Rule: usedup(Object)
			if object["isUsedUp"]:
				self.rules.append([("usedup", name)])
			# Rule: cookable(Object)
			if object["cookable"]:
				self.rules.append([("cookable", name)])
			# Rule: cooked(Object)
			if object["isCooked"]:
				self.rules.append([("cooked", name)])
			# Rule: temperature(Object, Temperature)
			self.rules.append([("temperature", name, object["temperature"].lower())])
			# Rule: heatsource(Object)
			if object["isHeatSource"]:
				self.rules.append([("heatsource", name)])
			# Rule:  coldsource(Object)
			if object["isColdSource"]:
				self.rules.append([("coldsource", name)])
			# Rule: sliceable(Object)
			if object["sliceable"]:
				self.rules.append([("sliceable", name)])
			# Rule: sliced(Object)
			if object["isSliced"]:
				self.rules.append([("sliced", name)])
			# Rule: openable(Object)
			if object["openable"]:
				self.rules.append([("openable", name)])
			# Rule: open(Object)
			if object["isOpen"]:
				self.rules.append([("open", name)])
			# Rule: pickupable(Object)
			if object["pickupable"]:
				self.rules.append([("pickupable", name)])
			# Rule: moveable(Object)
			if object["moveable"]:
				self.rules.append([("moveable", name)])
			# Rule: hasmass(Object, Mass)
			self.rules.append([("hasmass", name, object["mass"])])
			# Rule: madeof(Object, Material)
			if object["salientMaterials"]:
				materials = []
				for mat in object["salientMaterials"]:
					materials.append(str(mat).lower())
				temp = ("madeof", name, materials)
				self.rules.append([temp])
		for object in event.metadata["objects"]:
			name = object["name"].lower()
			# Rule: in(ObjectInReceptacle, Receptacle)
			if object["receptacleObjectIds"]:
				for inside_object in object["receptacleObjectIds"]:
					i = temporary_objects[inside_object].lower()
					self.rules.append([("in", i, name)])
			# Rule: controls(ObjectThatControls, ControlledObject) i.e. controls(stoveknob, stoveburner)
			if object["controlledObjects"]:
				i = temporary_objects[object["controlledObjects"][0]].lower()
				self.rules.append([("controls", name, i)])

	def update_object_ids(self, event):
		for obj in event.metadata["objects"]:
			name = obj["name"].lower()
			self.objects[name] = obj["objectId"]

	def print_rules_to_file(self, file=None):
		"""
		This method prints the self.rules to a file.
		:param file: File to print to, default is generated_scasp.pl
		"""
		if file:
			f = open(file, "w")
		else:
			f = open("scasp_knowledge_base/generated_scasp.pl", "w")
		f.write(self.rules_to_string())
		f.close()

	def rules_to_string(self):
		"""
		This converts rules in Python list format to string rules that can be read by a
		prolog parser.
		:return: string version of the rules
		"""
		final_rules = ""
		for rule in self.rules:
			if len(rule) == 1:
				final_rules += self.build_rule(rule[0]) + ".\n"
			elif len(rule) > 1:
				string_rule = ""
				first_rule = rule[0]
				string_rule += self.build_rule(first_rule) + " :- "
				for r in rule:
					if r != first_rule:
						string_rule += self.build_rule(r) + ", "
				string_rule = string_rule[0:-2] + ".\n"
				final_rules += string_rule
		return final_rules

	def run_query(self, query):
		"""
		This method runs a passed in query and returns the results from s(CASP)
		:param query: query to run, in the format of a list
		:return: results of query
		"""
		self.get_metadata()
		self.print_rules_to_file()
		f = open("scasp_knowledge_base/generated_scasp.pl", "r")
		lines = f.readlines()
		if "?" in lines[-1]:
			lines.pop(-1)
		f.close()
		f = open("scasp_knowledge_base/generated_scasp.pl", "w")
		for line in lines:
			f.write(line)
		f.write("\n?- ")
		f.write(self.build_rule(query[0], low=False) + ".")
		f.close()
		return self.run_generated_scasp()

	@staticmethod
	def build_rule(list_rule, low=False):
		"""
		Takes a single rule as a list and turns it into a s(CASP) format string
		:param list_rule: rule in list form
		:param low: whether to lowercase arguments or not
		:return: stringified rule
		"""
		string_rule = ""
		rule = []
		if low:
			for r in list_rule:
				rule.append(str(r).lower())
		else:
			for r in list_rule:
				rule.append(str(r))
		fact = rule.pop(0)
		string_rule += fact + "("
		for r in rule:
			string_rule += r + ", "
		string_rule = string_rule[0:-2] + ")"
		return string_rule

	@staticmethod
	def run_generated_scasp():
		"""
		Runs the generated_scasp.pl file
		:return: results of running the file
		"""
		output = subprocess.run(["./scasp_knowledge_base/test.sh"], shell=True, capture_output=True, text=True)
		output = output.stdout
		if 'BINDINGS' in output and "BINDINGS: ?" not in output:
			options = []
			output = output.split('ANSWER:')[1:]
			for option in output:
				option = option.replace(" ?", "")
				opt = option[option.find('BINDINGS') + 10:-2].strip()
				opt = opt.split('\n')
				opt = [item.split(' = ') for item in opt]
				opt = {name: value.strip() for [name, value] in opt}
				options.append(opt)
			output = options
		# If no model found, return an empty dictionary.
		elif 'no models' in output:
			output = False
		else:
			output = None

		return output

	def get_counterfactuals(self, query):
		"""
		Hardcoded return of counterfactuals.
		:param query: currently doesn't do anything
		:return:
		"""
		counterfactuals_base = []
		if not self.run_query([("in", "pan_21173d15", "stoveburner_d506dac6")]):
			counterfactuals_base.append(("in", "pan_21173d15", "stoveburner_d506dac6"))
		if not self.run_query([("in", "egg_67211636", "pan_21173d15")]):
			counterfactuals_base.append(("in", "egg_67211636", "pan_21173d15"))
		if not self.run_query([("toggled", "stoveknob_39559252")]):
			counterfactuals_base.append(("toggled", "stoveknob_39559252"))
		return counterfactuals_base

	def populate_action_dictionary(self, forceAction=True):
		"""
		This function populates a small subset of possible actions
		into a dictionary, where the key is the Prolog predicate pointing to
		the line of code to execute an action. In this, PARAMX will need
		to be substituted with the actual arguments.
		"""
		if forceAction:
			fa = "True"
		else:
			fa = "False"
		# in predicate
		self.action_dictionary["in"] = ["self.controller.step(" \
		                               "action=\"PickupObject\", " \
		                               "objectId=\"PARAM1_OBJECT\", " \
		                               "forceAction=" + fa + ", " \
		                               "manualInteract=False" \
		                               ")",
		                               "self.controller.step(" \
		                               "action=\"PutObject\", " \
		                               "objectId=\"PARAM2_OBJECT\", " \
		                               "forceAction=" + fa + ", " \
		                               "placeStationary=True" \
		                               ")"]
		# toggled predicate
		self.action_dictionary["toggled"] = ["self.controller.step(" \
		                                    "action=\"ToggleObjectOn\", " \
		                                    "objectId=\"PARAM1_OBJECT\", " \
		                                    "forceAction=" + fa + \
		                                    ")"]

	def take_action(self, query):
		"""
		This function takes the action associated with the query.
		:param query: a tuple representing the s(CASP) query to solve
		"""
		actions = self.action_dictionary[query[0]]
		new_action = ""
		for action_index, action in enumerate(actions):
			for index, parameter in enumerate(query):
				if "PARAM" + str(index) + "_OBJECT" in action:
					objectId = self.objects[parameter]
					new_action = action.replace("PARAM" + str(index) + "_OBJECT",
					                        objectId)
				elif "PARAM" + str(index) in action:
					new_action = action.replace("PARAM" + str(index),
					                        parameter)
			event = eval(new_action)
			self.update_object_ids(event)

	def perform_task(self, query):
		counterfactuals = self.get_counterfactuals(query)
		for cf in counterfactuals:
			self.take_action(cf)
		answer = self.run_query([query])
		if answer:
			print("Task completed.")
			print(answer)
		else:
			print("Task could not be completed.")