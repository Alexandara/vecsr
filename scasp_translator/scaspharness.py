import logging
import subprocess

class ScaspHarness():
	def __init__(self, simulator, initial_rules=None):
		if simulator:
			self.simulator = simulator
		# A prolog rule is represented here as a list of the form:
		# [("name_of_predicate", "parameter1", ..., "parameterN"), (...)...]
		self.initial_rules = ""
		if initial_rules:
			rules = open(initial_rules, "r")
			self.initial_rules = rules.read()
			rules.close()
		self.rules = []
		self.objects = {}

	def get_scasp(self):
		"""
		This method gets the state from the simulator and appends it to the
		initial rules
		"""
		self.rules = self.simulator.get_state()

	def print_rules_to_file(self, file=None, past_file=None):
		"""
		This method prints the self.rules to a file.
		:param file: File to print to, default is generated_scasp.pl
		"""
		if file:
			filename = file
		else:
			filename = "scasp_knowledge_base/generated_scasp.pl"
		new_file_info = ""
		# For running simulations, we want to keep previous state information
		if self.simulator.timestamp > 1:
			try:
				old_file = open(filename, "r")
				new_file_info = old_file.read()
				old_file.close()
			except IOError:
				logging.warning("File %s deleted mid-simulation, previous state info lost!", filename)
			new_file_info = new_file_info.replace(self.initial_rules, "")\
				.replace("% Current State\n", "")\
				.replace("% Previous States\n", "")\
				.replace("% Rules\n", "")
		f = open(filename, "w")
		f.write("% Current State\n")
		f.write("current_time(" + str(self.simulator.timestamp) + ").\n")
		f.write(self.rules_to_string())
		f.write("% Rules\n")
		f.write(self.initial_rules)
		f.close()
		if past_file:
			prev_file = open(past_file, "w")
		else:
			prev_file = open("scasp_knowledge_base/past_states.pl", "w")
		prev_file.write("% Previous States\n")
		prev_file.write("current_time(" + str(self.simulator.timestamp) + ").\n")
		prev_file.write(new_file_info)
		prev_file.close()

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
		:param query: query to run, in the format of a list of tuples
		:return: results of query
		"""
		self.get_scasp()
		self.print_rules_to_file()
		str_query = self.build_rule(query[0], low=False) + "."
		logging.info("Running query: " + str_query)
		f = open("scasp_knowledge_base/generated_scasp.pl", "a")
		f.write("\n\n?- ")
		f.write(str_query)
		f.close()
		result = self.run_generated_scasp()
		if result:
			logging.info("Success! Results: ")
			logging.info(result)
		else:
			logging.info("Failure")
		return result

	@staticmethod
	def build_rule(list_rule, low=False):
		"""
		Takes a single rule as a list and turns it into an s(CASP) format string
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
		if len(rule) == 0:
			return fact + "."
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

	def take_action(self, action):
		"""
		This function takes the action associated with the query.
		:param action: a tuple representing the action to take
		"""
		if not action or len(action) <= 0:
			logging.warning("Invalid action passed in, no action taken.")
			return False
		elif len(action) == 1:
			logging.info("Taking action %s.", action[0])
		elif len(action) == 2:
			logging.info("Taking action %s on parameter %s.", action[0], action[1])
		elif len(action) == 3:
			logging.info("Taking action %s on parameters %s and %s.", action[0], action[1], action[2])
		elif len(action) > 3:
			logging.info("Taking action %s on %s parameters.", action[0], str(len(action)-1))
		else:
			logging.warning("Invalid action passed in, no action taken.")
			return False
		result = self.simulator.take_action(action)
		return result

	def perform_task(self, query):
		# TODO: Implement
		logging.warning("perform_task called, method currently a stub")