import logging
import socket
import subprocess
from time import sleep


class ScaspHarness():
	def __init__(self, simulator, initial_rules=None, optimize_rules=False, rooms=None, scasp_client=None):
		if simulator:
			self.simulator = simulator
			if simulator.which_simulator() == "VirtualHome":
				self.simulator.set_rooms(rooms)
		self.optimize_rules = optimize_rules
		# A prolog rule is represented here as a list of the form:
		# [("name_of_predicate", "parameter1", ..., "parameterN"), (...)...]
		if initial_rules:
			rules = open(initial_rules, "r")
			self.initial_rules = rules.read()
			rules.close()
		else:
			self.initial_rules = ""
		self.dependency_graph = {}
		self.generate_dependency_graph()
		self.rules = {}
		self.objects = {}
		self.relevant_items = None
		self.scasp_client = scasp_client

	def get_scasp(self):
		"""
		This method gets the state from the simulator and appends it to the
		initial rules
		"""
		if self.simulator.which_simulator() == "VirtualHome":
			self.rules = self.simulator.get_state(self.relevant_items)
		elif self.simulator.which_simulator() == "AirSim":
			self.rules = self.simulator.get_state()

	def print_rules_to_file(self, file=None, past_file=None, query=None):
		"""
		This method prints the self.rules to a file.
		:param file: File to print to, default is generated_scasp.pl
		:param past_file: file of previous rules
		:param query: query to optimize for
		"""
		self.get_scasp()
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
		facts_and_rules = "% Current State\n" + \
			                  "current_time(" + str(self.simulator.timestamp) + ").\n"
		facts_and_rules = facts_and_rules + self.rules_to_string()
		facts_and_rules = facts_and_rules + "% Rules\n" + self.initial_rules
		if self.optimize_rules and query:
			f.write(self.get_relevant_rules(facts_and_rules, query))
		else:
			f.write(facts_and_rules)
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
		self.print_rules_to_file(query=query)
		str_query = self.build_rule(query[0], low=False) + "."
		logging.info("Running query: " + query[0][0])
		logging.debug("Full query: " + str_query)
		f = open("scasp_knowledge_base/generated_scasp.pl", "a")
		f.write("\n\n?- ")
		f.write(str_query)
		f.close()
		result = self.run_generated_scasp(self.scasp_client)
		if result:
			logging.info("Success!")
			logging.debug(result)
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
	def run_generated_scasp(scasp_client=None):
		"""
		Runs the generated_scasp.pl file
		:return: results of running the file
		"""
		output = [{}]
		if scasp_client:
			with open('scasp_knowledge_base/generated_scasp.pl', 'r') as content_file:
				message = content_file.read()
			data = scasp_client.send_text(message)
			if data[0] == "f":
				return False
			data = data.split(".")
			data.pop(0)
			for i, item in enumerate(data):
				if i % 2 == 0:
					output[0][item] = data[i + 1]
		else:
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

	def generate_dependency_graph(self):
		rules = self.sterilize_rules(self.initial_rules)
		rules = [r for r in rules if ":-" in r]
		for rule in rules:
			if "%" in rule:
				rule = rule.split("%")[0]
			rule = self.remove_inner_brackets(rule)
			main_rule = rule.split(":-")[0]
			main_rule = self.prolog_count(main_rule)
			sub_rules = rule.split(":-")[1].split(")")
			dependencies = []
			for sub in sub_rules:
				while "," in sub and "(" in sub and sub.index(",") < sub.index("("):
					sub = sub.split(",", 1)[1]
				new_count = self.prolog_count(sub)
				if new_count[0] == '' or (new_count[0] == main_rule[0] and new_count[1] == main_rule[1]):
					continue
				dependencies.append(new_count)
			first_list = self.dependency_graph.get(main_rule, [])
			second_list = dependencies
			# This should add the list of already known dependencies and new ones together, removing duplicates
			self.dependency_graph[main_rule] = first_list + list(set(second_list) - set(first_list))

	@staticmethod
	def remove_inner_brackets(string):
		brackets = []
		new_string = ""
		open_brack = "({["
		close_brack = ")}]"
		for s in string:
			if len(brackets) == 0 or (len(brackets) == 1 and not s in open_brack):# and not s in close_brack):
				new_string = new_string + s
			else:
				new_string = new_string + "s"
			if s in open_brack:
				brackets.append(s)
				continue
			if s in close_brack:
				brackets.pop()
				continue
		return new_string

	@staticmethod
	def prolog_count(string):
		new_string = string.replace("not", "").replace(" ", "")
		count = new_string.count(",")+1
		new_string = new_string.replace(",", "")
		return(new_string.split("(")[0], count)

	@staticmethod
	def print_dict(dct):
		print("Dictionary:")
		for item, amount in dct.items():
			print("{}: {}".format(item, amount))

	@staticmethod
	def sterilize_rules(rules):
		new_rules = rules.split("\n")
		new_rules = [r for r in new_rules if len(r) > 0 and not "%" == r[0]]
		new_rules = "".join(new_rules)
		new_rules = new_rules.replace("\n", "").replace(" ", "").split(").")
		new_rules = [rule + ")" for rule in new_rules if rule]
		return new_rules

	def get_relevant_rules(self, facts_and_rules, query):
		r_rules = []
		query_tup = (query[0][0], len(query[0])-1)
		# First, we need to get a list of all the relevant rules using DFS
		relevant_rules = []
		self.dfs(relevant_rules, self.dependency_graph, query_tup)
		# Then we need to get a list of the rules for those queries
		string_rules = self.sterilize_rules(facts_and_rules)
		for rule in string_rules:
			main_rule = self.remove_inner_brackets(rule)
			main_rule = main_rule.split(":-")[0]
			main_rule = self.prolog_count(main_rule)
			if main_rule in relevant_rules:
				if "not" in rule and not "not_" in rule:
					r_rules.append(rule.replace("not", "not "))
				else:
					r_rules.append(rule)
		r_rules = ".\n".join(r_rules) + "."
		r_rules = r_rules.replace(",", ", ").replace(":-", " :- ") #.replace("not", "not ")
		return r_rules

	def dfs(self, visited, graph, start_node):  # function for dfs
		if start_node not in visited:
			visited.append(start_node)
			if start_node not in graph:
				return
			for neighbour in graph[start_node]:
				self.dfs(visited, graph, neighbour)
