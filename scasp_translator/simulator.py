import logging
import re
import glob
from utils_demo import *
from abc import ABC, abstractmethod
import pandas as pd

class VirtualHomeObject:
	def __init__(self, name, identifier=None):
		logging.debug("Initializing VirtualHomeObject with name %s and identifier %s.", name, str(identifier))
		if identifier is not None:
			self.name = name
			self.identifier = identifier
		else:
			self.name = "".join([l for l in name if l.isalpha()])
			self.identifier = int("".join([n for n in name if n.isnumeric()]))

	def to_string(self):
		return self.name + str(self.identifier)

class Simulator(ABC):
	def __init__(self):
		self.timestamp = 1

	def get_graph(self):
		pass

	@abstractmethod
	def get_state(self):
		pass

	@abstractmethod
	def take_action(self, action):
		pass

	def knowledge_graph_to_predicates(self, graph, time=False, character_perspective=True):
		includeType = True
		includeState = True
		includeProperties = True
		includeRelationships = True
		# Get all rooms
		room_nodes = self.check_for_node(graph, category="Rooms")
		node_lookup = self.node_lookup_dict(graph)
		room_facts = {}
		for room in room_nodes:
			facts = []
			ids = {}
			for node in graph['nodes']:
				if not self.check_for_edge(graph, to_id=room["id"], from_id=node["id"], relation_type="INSIDE")\
						and not node == room:
					continue
				identifier = node['class_name'] + str(node['id'])
				ids[node['id']] = identifier
				if includeType:
					if time:
						facts.append([("type", identifier, node['class_name'], self.timestamp)])
					else:
						facts.append([("type", identifier, node['class_name'])])
				if includeState:
					for state in node['states']:
						if time:
							facts.append([(state.lower(), identifier, self.timestamp)])
						else:
							facts.append([(state.lower(), identifier)])
				if includeProperties:
					for property in node["properties"]:
						if time:
							facts.append([(property.lower(), identifier, self.timestamp)])
						else:
							facts.append([(property.lower(), identifier)])
				node_lookup[node["id"]] = node["class_name"] + str(node["id"])
			if not includeRelationships:
				continue
			relationships = {}
			character_relationships = {}
			# This section makes rules where the relationships are represented as a list of
			# the items having that relationship with that object.
			for edge in graph['edges']:
				if not (edge["from_id"] in ids.keys() or edge["to_id"] in ids.keys()):
					continue
				# There are two "ON" states, a node and an edge. For the edge we clarify to ontopof to avoid
				# unclear facts in our final knowledge base.
				if "ON" == edge["relation_type"]:
					rel = "ONTOPOF"
				elif "HOLDS_LH" == edge["relation_type"] or "HOLDS_RH" == edge["relation_type"]:
					rel = "HOLDS"
				else:
					rel = edge["relation_type"]
				# We create string representations of state in the form relationship(to_id, from_id)
				# unless they pertain to the character and character_perspective is true, in which case
				# only the non-character fact is maintained
				if "char" in node_lookup[edge["from_id"]]:
					character_rule_state = node_lookup[edge["to_id"]]
					if not rel in character_relationships or character_relationships[rel] is None:
						character_relationships[rel] = []
					if not character_rule_state in character_relationships[rel]:
						character_relationships[rel].append(character_rule_state)
				elif "char" in node_lookup[edge["to_id"]]:
					character_rule_state = node_lookup[edge["from_id"]]
					if not rel in character_relationships or character_relationships[rel] is None:
						character_relationships[rel] = []
					if not character_rule_state in character_relationships[rel]:
						character_relationships[rel].append(character_rule_state)
				rule_state = rel.lower() + "(" + node_lookup[edge["from_id"]] + ", " + node_lookup[edge["to_id"]] + ")"
				if not rel in relationships or relationships[rel] is None:
					relationships[rel] = []
				relationships[rel].append(rule_state)
			# Create facts based on the list of relationships
			for rule in relationships.keys():
				string_list = "["
				for relationed_item in relationships[rule]:
					string_list += relationed_item + ", "
				string_list = string_list[:-2] + "]"
				if time:
					facts.append([(rule.lower(), string_list, self.timestamp)])
				else:
					facts.append([(rule.lower(), string_list)])
			if character_perspective:
				for rule in character_relationships.keys():
					string_list = "["
					for relationed_item in character_relationships[rule]:
						string_list += relationed_item + ", "
					string_list = string_list[:-2] + "]"
					if time:
						facts.append([(rule.lower() + "_character", string_list, self.timestamp)])
					else:
						facts.append([(rule.lower() + "_character", string_list)])
			room_facts[room["id"]] = facts
		return room_facts

	@staticmethod
	def check_for_node(graph, identifier=None, class_name=None, category=None):
		logging.debug("Checking for node with id %s, class_name %s, and category %s.",
		              str(identifier), str(class_name), str(category))
		nodes_to_return = []
		# If we have id, all ids are unique, and it should correspond to exactly one node
		for node in graph["nodes"]:
			if (node["id"] == identifier or identifier is None) \
					and (node["class_name"] == class_name or class_name is None) \
					and (node["category"] == category or category is None):
				nodes_to_return.append(node)
			elif node["id"] == identifier:
				logging.warning("Id %s does not correspond to class_name %s and category %s. "
				                "It has a class_name of %s and category %s.",
				                str(identifier), str(class_name), str(category),
				                node["class_name"], node["category"])
		logging.debug("Found %s nodes.", str(len(nodes_to_return)))
		return nodes_to_return

	@staticmethod
	def check_for_nodes_of_state_or_property(graph, s_or_p):
		logging.debug("Checking for edges with state or property %s.", s_or_p)
		nodes_to_return = []
		for node in graph["nodes"]:
			if s_or_p in node["states"] or s_or_p in node["properties"]:
				nodes_to_return.append(node)
		logging.debug("Found %s nodes.", str(len(nodes_to_return)))
		return nodes_to_return

	@staticmethod
	def check_for_edge(graph, from_id=None, to_id=None, relation_type=None):
		logging.debug("Checking for edge %s to %s with relationship %s.", str(from_id), str(to_id), str(relation_type))
		edges_to_return = []
		# Check is a specific edge exists
		for edge in graph["edges"]:
			if (edge["from_id"] == from_id or from_id is None) and \
					(edge["to_id"] == to_id or to_id is None) and \
					(edge["relation_type"] == relation_type or relation_type is None):
				edges_to_return.append(edge)
		logging.debug("Found %s edges.", str(len(edges_to_return)))
		return edges_to_return

	def character_room(self):
		graph = self.get_graph()
		nodes = self.check_for_node(graph, class_name="character")
		rooms = set()
		for node in nodes:
			edges = self.check_for_edge(graph, from_id=node["id"], relation_type="INSIDE")
			if edges:
				for edge in edges:
					rooms.add(edge["to_id"])
		if len(rooms) == 0:
			logging.warning("No characters in simulation.")
		return rooms

	def get_rooms(self):
		graph = self.get_graph()
		room_nodes = self.check_for_node(graph, category="Rooms")
		rooms = {}
		for room in room_nodes:
			rooms[room["id"]] = room["class_name"]
		return rooms
	@staticmethod
	def node_lookup_dict(graph):
		node_lookup = {}
		for node in graph['nodes']:
			node_lookup[node["id"]] = node["class_name"] + str(node["id"])
		return node_lookup

class VirtualHomeSimulator(Simulator):
	def __init__(self, environment=0, automatic=False):
		super().__init__()
		# Initialize
		logging.info("Initializing VirtualHome simulator...")
		# Check OS (Note: Only tested on MacOS)
		self.osname = ""
		if platform == "darwin":
			self.osname = "macos"
		elif platform == "linux":
			self.osname = "linux"
		elif platform == "windows" or platform == 'win32':
			self.osname = "windows"
		# Run auto simulation
		mode = 'manual'  # auto / manual
		if automatic:
			if platform == 'darwin':
				exec_file = 'macos_exec*'
			else:
				exec_file = 'linux_exec*.x86_64'
			file_names = glob.glob(exec_file)
			if len(file_names) > 0:
				file_name = file_names[0]
				self.comm = UnityCommunication(file_name=file_name, port="8082", x_display="0")
			else:
				logging.error("Executable path not found.")
		else:
			self.comm = UnityCommunication()
		# Reset the scene
		self.comm.reset(environment)
		self.actions = {}
		self.get_actions()
		self.comm.add_character('Chars/Male2', initial_room='kitchen')

	def get_graph(self):
		_, g = self.comm.environment_graph()
		return g

	def get_state(self):
		"""
		A method that returns the current state of the environment in the form
		of Prolog facts of the form [(fact, parameter, ...)]
		:return: a list of prolog facts [[(fact)], [(fact2)], ...]
		"""
		s, g = self.comm.environment_graph()
		facts = self.knowledge_graph_to_predicates(g)
		return facts

	def get_actions(self):
		"""
		This function populates a small subset of possible actions
		into a dictionary, where the key is the Prolog predicate pointing to
		the line of code to execute an action. In this, PARAMX will need
		to be substituted with the actual arguments.
		:return: dict of predicates -> actions
		"""
		self.actions["walk"] = ["<CHARX> [walk] PARAM1"]
		self.actions["on"] = ["<CHARX> [walk] PARAM1",
		                 "<CHARX> [switchon] PARAM1"]
		self.actions["grab"] = ["<CHARX> [grab] PARAM1"]
		self.actions["sit"] = ["<CHARX> [sit] PARAM1"]
		self.actions["put"] = ["<CHARX> [putback] PARAM1 PARAM2"]

	def take_action(self, query, character=0):
		"""
		Method to perform the action passed in within the simulator.
		:param action:
		:return: boolean representing if the action was completed successfully
		or not
		"""
		try:
			actions = self.actions[query[0]]
		except KeyError:
			logging.error("Invalid action received!")
			return False
		new_actions = []
		for action_index, action in enumerate(actions):
			new_action = action.replace("CHARX", "char" + str(character))
			for index, parameter in enumerate(query):
				if "PARAM" + str(index) in action:
					new_action = new_action.replace("PARAM" + str(index),
					                            "<" + re.sub("[^A-Za-z]", "", parameter) + "> (" +
					                            re.sub(r"[^0-9]", "", parameter) + ")")
				else:
					new_action = new_action
			new_actions.append(new_action)
		logging.info("Taking action:")
		logging.info(new_actions)
		comm.render_script(new_actions, frame_rate=10, camera_mode=["PERSON_FROM_BACK"], recording=True)
		self.timestamp += 1
		return True

class MockVirtualHomeSimulator(Simulator):
	def __init__(self):
		super().__init__()
		logging.info("Initializing mock virtual home simulator...")
		self.state_graph = {"nodes":[], "edges":[]}
		self.initialize_state_graph()
		# Living Room ID: 100
		self.possible_rooms = ["livingroom"]
		self.room_ids = [100]

	def initialize_state_graph(self):
		id_number = 1
		living_room_items = []
		# Nodes
		# Living Room
		self.state_graph["nodes"].append({"id":100,
		                                  "class_name":"livingroom",
		                                  "states":[],
		                                  "properties":["CONTAINERS"],
		                                  "category":"Room"})
		# Character
		self.state_graph["nodes"].append({"id": 0,
		                                  "class_name": "character",
		                                  "states": [],
		                                  "properties": [],
		                                  "category": "Character"})
		living_room_items.append(VirtualHomeObject("character", 0))
		# Remote Control
		self.state_graph["nodes"].append({"id": id_number,
		                                  "class_name": "remotecontrol",
		                                  "states": ["OFF"],
		                                  "properties": ["GRABBABLE", "HAS_SWITCH"],
		                                  "category": "Electronic"})
		living_room_items.append(VirtualHomeObject("remotecontrol", id_number))
		id_number += 1
		# Television
		self.state_graph["nodes"].append({"id": id_number,
		                                  "class_name": "television",
		                                  "states": ["OFF"],
		                                  "properties": ["HAS_SWITCH"],
		                                  "category": "Electronic"})
		living_room_items.append(VirtualHomeObject("television", id_number))
		id_number += 1
		# Clothes Basket
		self.state_graph["nodes"].append({"id": id_number,
		                                  "class_name": "clothesbasket",
		                                  "states": [],
		                                  "properties": ["GRABBABLE", "CONTAINERS"],
		                                  "category": "Receptacle"})
		living_room_items.append(VirtualHomeObject("clothesbasket", id_number))
		id_number += 1
		# Clothes (multiple)
		self.state_graph["nodes"].append({"id": id_number,
		                                  "class_name": "clothesshirt",
		                                  "states": [],
		                                  "properties": ["GRABBABLE"],
		                                  "category": "Clothes"})
		living_room_items.append(VirtualHomeObject("clothesshirt", id_number))
		id_number += 1
		self.state_graph["nodes"].append({"id": id_number,
		                                  "class_name": "clothesshirt",
		                                  "states": [],
		                                  "properties": ["GRABBABLE"],
		                                  "category": "Clothes"})
		living_room_items.append(VirtualHomeObject("clothesshirt", id_number))
		id_number += 1

		# Edges
		for item in living_room_items:
			self.state_graph["edges"].append({"from_id":item.identifier,
			                                  "to_id":100,
			                                  "relation_type":"INSIDE"})

	def get_graph(self):
		return self.state_graph

	def get_state(self):
		return self.knowledge_graph_to_predicates(self.state_graph)

	def take_action(self, action):
		# Possible actions: walk, grab, put
		# TODO provide user with possible actions
		# Current Assumptions: Character 0 is the only character, character cannot be on or inside of anything other
		# than rooms.
		action_taken = False
		if not action or len(action) <= 0:
			return False
		if action[0].lower() == "walk":
			param1 = VirtualHomeObject(action[1])
			# Check Preconditions
			relationships = self.check_for_edge(self.state_graph, from_id=0, to_id=param1.identifier)
			if relationships:
				for rel in relationships:
					if rel["relation_type"] in ["INSIDE", "CLOSE", "HOLDS_RH", "HOLDS_LH"]:
						logging.warning("Character 0 already %s %s.", str(rel["relation_type"]), param1.to_string())
						return False
			if self.check_for_edge(self.state_graph, from_id=0, relation_type="SITTING"):
				logging.warning("Character 0 currently sitting.")
				return False
			# Execute Action
			# Remove all close edges for character and held objects
			close_edges = self.check_for_edge(self.state_graph, from_id=0, relation_type="CLOSE") + \
			              self.check_for_edge(self.state_graph, to_id=0, relation_type="CLOSE")
			for close in close_edges:
				self.remove_edge(close)
			held_edges = self.check_for_edge(self.state_graph, from_id=0, relation_type="HOLDS_RH") + \
			             self.check_for_edge(self.state_graph, from_id=0, relation_type="HOLDS_LH")
			# We also need to keep track of everything that is being moved along with the character
			moved_ids = [0]
			for held in held_edges:
				moved_ids.append(held["to_id"])
				held_close_edges = self.check_for_edge(self.state_graph, from_id=held["to_id"], relation_type="CLOSE") + \
				                   self.check_for_edge(self.state_graph, to_id=held["to_id"], relation_type="CLOSE")
				for held_close in held_close_edges:
					self.remove_edge(held_close)
				self.state_graph["edges"].append({"from_id":0, "to_id":held["to_id"], "relation_type":"CLOSE"})
			# Check if we are walking to a room
			if param1.name in self.possible_rooms:
				# Check if we are already in a different room, so we can remove that edge
				for item in moved_ids:
					if self.check_for_edge(self.state_graph, from_id=item, relation_type="INSIDE"):
						character_inside_edges = self.check_for_edge(self.state_graph, from_id=item, relation_type="INSIDE")
						for edge in character_inside_edges:
							if edge["to_id"] in self.room_ids:
								self.remove_edge(edge)
					# Add an edge stating we are in the room
					self.state_graph["edges"].append({"from_id":item,
					                                  "to_id":param1.identifier,
					                                  "relation_type":"INSIDE"})
			else:
				# We want to be close to things that the thing we're close to is close to
				close_edges = self.check_for_edge(self.state_graph, from_id=param1.identifier, relation_type="CLOSE") + \
				              self.check_for_edge(self.state_graph, to_id=param1.identifier, relation_type="CLOSE")
				for item in moved_ids:
					# Firstly, we are close to the item we walked to
					self.state_graph["edges"].append({"from_id": param1.identifier, "to_id": item,
					                                  "relation_type": "CLOSE"})
					# Secondly, we are close to the items close to the item we walked to
					for close in close_edges:
						new_id = close["from_id"] if close["from_id"] != param1.identifier else close["to_id"]
						self.state_graph["edges"].append({"from_id":item, "to_id":new_id, "relation_type": "CLOSE"})
			self.timestamp += 1
		elif action[0].lower() == "grab":
			param1 = VirtualHomeObject(action[1])
			# Check preconditions
			if not (self.check_for_edge(self.state_graph, from_id=0, to_id=param1.identifier, relation_type="CLOSE") \
				or self.check_for_edge(self.state_graph, from_id=param1.identifier, to_id=0, relation_type="CLOSE")):
				logging.warning("Character 0 is not close to %s, it cannot be grabbed.", param1.to_string())
				return False
			if "GRABBABLE" not in self.check_for_node(self.state_graph, identifier=param1.identifier)[0]["properties"]:
				logging.warning("Item %s is not grabbable.", param1.to_string())
				return False
			if self.check_for_edge(self.state_graph, from_id=0, relation_type="HOLDS_RH") \
				and self.check_for_edge(self.state_graph, from_id=0, relation_type="HOLDS_LH"):
				logging.warning("Character 0 is holding something in both hands already "
				                "and cannot pick up another item.")
				return False
			for edge in self.check_for_edge(self.state_graph, from_id=param1.identifier, relation_type="INSIDE"):
				# Note: this only checks if the item is inside one item, not if it's inside two or more objects
				if "CLOSED" in self.check_for_node(self.state_graph, identifier=edge["to_id"])[0]["states"]:
					logging.warning("Item %s is in closed container with id %s, and thus not reachable.",
					                param1.to_string(), str(edge["to_id"]))
					return False
			# Enact Action
			# The object will no longer be on or inside whatever it was on or inside
			for edge in self.check_for_edge(self.state_graph, from_id=param1.identifier, relation_type="ON") \
			            + self.check_for_edge(self.state_graph, from_id=param1.identifier, relation_type="INSIDE"):
				if not edge["to_id"] in self.room_ids and edge["relation_type"] == "INSIDE":
					self.remove_edge(edge)
			# It will be held in the available hand
			if self.check_for_edge(self.state_graph, from_id=0, relation_type="HOLDS_RH"):
				self.state_graph["edges"].append({"from_id":0, "to_id":param1.identifier, "relation_type":"HOLDS_LH"})
			else:
				self.state_graph["edges"].append({"from_id":0, "to_id":param1.identifier, "relation_type":"HOLDS_RH"})
			# It will be close to whatever the character is close to
			for edge in self.check_for_edge(self.state_graph, from_id=0, relation_type="CLOSE"):
				if param1.identifier != edge["to_id"]:
					self.state_graph["edges"].append({"from_id":param1.identifier, "to_id":edge["to_id"],
					                                  "relation_type":"CLOSE"})
			for edge in self.check_for_edge(self.state_graph, to_id=0, relation_type="CLOSE"):
				if param1.identifier != edge["from_id"]:
					self.state_graph["edges"].append({"from_id":param1.identifier, "to_id":edge["from_id"],
					                                  "relation_type":"CLOSE"})
		elif action[0].lower() == "put":
			param1 = VirtualHomeObject(action[1])
			if "CONTAINERS" in self.check_for_node(self.state_graph, identifier=param1.identifier)[0]["properties"]:
				place = "INSIDE"
			else:
				place = "ON"
			# Check preconditions
			if not (self.check_for_edge(self.state_graph, from_id=0, to_id=param1.identifier, relation_type="CLOSE")
			        or self.check_for_edge(self.state_graph, from_id=param1.identifier, to_id=0, relation_type="CLOSE")):
				logging.warning("Character 0 is not close to %s.", param1.to_string())
				return False
			left_hand = self.check_for_edge(self.state_graph, from_id=0, relation_type="HOLDS_LH")
			right_hand = self.check_for_edge(self.state_graph, from_id=0, relation_type="HOLDS_RH")
			if not (left_hand or right_hand):
				logging.warning("Character 0 is not holding anything.")
				return False
			# Execute Action
			if right_hand:
				put_object_node = self.check_for_node(self.state_graph, identifier=right_hand[0]["to_id"])
				put_object = VirtualHomeObject(put_object_node[0]["class_name"], put_object_node[0]["id"])
				logging.debug("Placing right hand object %s.", put_object.to_string())
				self.remove_edge(right_hand[0])
				self.state_graph["edges"].append({"from_id":put_object.identifier, "to_id":param1.identifier,
				                                  "relation_type":place})
			else:
				put_object_node = self.check_for_node(self.state_graph, identifier=left_hand[0]["to_id"])
				put_object = VirtualHomeObject(put_object_node[0]["class_name"], put_object_node[0]["id"])
				logging.debug("Placing left hand object %s.", put_object.to_string())
				self.remove_edge(left_hand[0])
				self.state_graph["edges"].append({"from_id": put_object.identifier, "to_id": param1.identifier,
				                                  "relation_type": place})
		# Remove duplicate edges
		new_edges = []
		for edge in self.state_graph["edges"]:
			if not edge in new_edges:
				new_edges.append(edge)
		self.state_graph["edges"] = new_edges
		return True

	def remove_edge(self, edge):
		self.state_graph["edges"] = self.remove_element(0, self.state_graph["edges"], edge, [])

	def remove_element(self, begin, old_list, value, new_list):
		if begin == len(old_list):
			return new_list
		if value != old_list[begin]:
			new_list.append(old_list[begin])
		return self.remove_element(begin + 1, old_list, value, new_list)  # recursive call