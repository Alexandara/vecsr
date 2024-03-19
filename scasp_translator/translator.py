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
		if initial_rules:
			self.rules = initial_rules
		else:
			self.rules = []
		self.objects = {}
		self.knowledge_graph = {}

	def get_metadata(self):
		"""
		This method converts the current state of the AI2-Thor simulation into s(CASP) rules
		These rules are in a Python list format
		"""
		_ = self.controller.step(action="Crouch")
		event = self.controller.step(action="Crouch")
		temporary_objects = {}
		temporary_rules = []
		for object in event.metadata["objects"]:
			name = object["name"].lower()
			self.objects[name] = object["objectId"]
			temporary_objects[object["objectId"]] = name
			# Rule: type(ObjectIdentifier, ObjectType)
			self.rules.append([["type", name, object["objectType"].lower()]])
			# Rule: visible(VisibleObject)
			if object["visible"]:
				self.rules.append([["visible", name]])
			# Rule: interactable(InteractableObject)
			if object["isInteractable"]:
				self.rules.append([["interactable", name]])
			# Rule: receptacle(ReceptacleObject)
			if object["receptacle"]:
				self.rules.append([["receptacle", name]])
			# Rule: toggleable(ToggleableObject)
			if object["toggleable"]:
				self.rules.append([["toggleable", name]])
			# Rule: toggled(Object)
			if object["isToggled"]:
				self.rules.append([["toggled", name]])
			# Rule: breakable(Object)
			if object["breakable"]:
				self.rules.append([["breakable", name]])
			# Rule: broken(Object)
			if object["isBroken"]:
				self.rules.append([["broken", name]])
			# Rule: canfillwithliquid(Object)
			if object["canFillWithLiquid"]:
				self.rules.append([["canfillwithliquid", name]])
			# Rule: filledwith(Object, Liquid)
			if object["isFilledWithLiquid"]:
				if object["fillLiquid"]:
					self.rules.append([["filledwith", name, object["fillLiquid"].lower()]])
			# Rule: dirtyable(Object)
			if object["dirtyable"]:
				self.rules.append([["dirtyable", name]])
			# Rule: dirty(Object)
			if object["isDirty"]:
				self.rules.append([["dirty", name]])
			# Rule: canbeusedup(Object)
			if object["canBeUsedUp"]:
				self.rules.append([["canbeusedup", name]])
			# Rule: usedup(Object)
			if object["isUsedUp"]:
				self.rules.append([["usedup", name]])
			# Rule: cookable(Object)
			if object["cookable"]:
				self.rules.append([["cookable", name]])
			# Rule: cooked(Object)
			if object["isCooked"]:
				self.rules.append([["cooked", name]])
			# Rule: temperature(Object, Temperature)
			self.rules.append([["temperature", name, object["temperature"].lower()]])
			# Rule: heatsource(Object)
			if object["isHeatSource"]:
				self.rules.append([["heatsource", name]])
			# Rule:  coldsource(Object)
			if object["isColdSource"]:
				self.rules.append([["coldsource", name]])
			# Rule: sliceable(Object)
			if object["sliceable"]:
				self.rules.append([["sliceable", name]])
			# Rule: sliced(Object)
			if object["isSliced"]:
				self.rules.append([["sliced", name]])
			# Rule: openable(Object)
			if object["openable"]:
				self.rules.append([["openable", name]])
			# Rule: open(Object)
			if object["isOpen"]:
				self.rules.append([["open", name]])
			# Rule: pickupable(Object)
			if object["pickupable"]:
				self.rules.append([["pickupable", name]])
			# Rule: moveable(Object)
			if object["moveable"]:
				self.rules.append([["moveable", name]])
			# Rule: hasmass(Object, Mass)
			self.rules.append([["hasmass", name, object["mass"]]])
			# Rule: madeof(Object, Material)
			if object["salientMaterials"]:
				temp = ["madeof", name]#, object["salientMaterials"].lower()]
				materials = []
				for mat in object["salientMaterials"]:
					materials.append(str(mat).lower())
				temp.append(materials)
				self.rules.append([temp])
			# Rule: in(ObjectInReceptacle, Receptacle)
			if object["receptacleObjectIds"]:
				for inside_object in object["receptacleObjectIds"]:
					temporary_rules.append(["in", inside_object, name])
			# Rule: controls(ObjectThatControls, ControlledObject) i.e. controls(stoveknob, stoveburner)
			if object["controlledObjects"]:
				temporary_rules.append(["controls", name, object["controlledObjects"][0]])
		for rule in temporary_rules:
			if rule[0] == "in":
				rule[1] = temporary_objects[rule[1]].lower()
				self.rules.append([rule])
			if rule[0] == "controls":
				rule[2] = temporary_objects[rule[2]].lower()
				self.rules.append([rule])

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

	@staticmethod
	def list_to_key(list):
		key = ""
		for s in list:
			key += s
		return key

	def generate_knowledge_graph(self):
		# TODO: Convert lists of rules to tuples (kms)
		for rule in self.rules:
			if len(rule) > 1:
				nodes = set()
				temprule = rule.copy()
				key = self.list_to_key(temprule.pop(0))
				for temp in temprule:
					print(temp)


	def get_counterfactuals(self, query):
		print("empty")