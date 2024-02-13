from ai2thor.controller import Controller

class Translator():
	def __init__(self):
		self.controller = Controller(
			agentMode="default",
			visibilityDistance=1.5,
			scene="FloorPlan212",

			# step sizes
			gridSize=0.25,
			snapToGrid=True,
			rotateStepDegrees=90,

			# image modalities
			renderDepthImage=False,
			renderInstanceSegmentation=False,

			# camera properties
			width=300,
			height=300,
			fieldOfView=90
		)