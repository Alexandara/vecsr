
from abc import ABC, abstractmethod

class Simulator(ABC):
	def __init__(self):
		self.timestamp = 1

	@abstractmethod
	def get_state(self):
		pass

	@abstractmethod
	def take_action(self, action):
		pass

	@staticmethod
	def which_simulator():
		return "Null"
