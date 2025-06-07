
from abc import ABC, abstractmethod

class Simulator(ABC):
	def __init__(self):
		self.timestamp = 1

	@abstractmethod
	def get_state(self, rooms=None):
		pass

	@abstractmethod
	def take_action(self, action):
		pass
