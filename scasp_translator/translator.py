from ai2thor.controller import Controller

class Translator():
	def __init__(self):
		self.controller = Controller(
			visibilityDistance=3.0,
			scene="FloorPlan1"
		)
		# A prolog rule is represented here as a list of the form:
		# ["name_of_predicate", "parameter1", ..., "parameterN"]
		self.rules = []
		self.objects = {}

	def get_metadata(self):
		_ = self.controller.step(action="Crouch")
		event = self.controller.step(action="Crouch")
		temporary_objects = {}
		temporary_rules = []
		# Keys = 'name', 'position', 'rotation', 'visible', 'isInteractable',
		# 'receptacle', 'toggleable', 'isToggled', 'breakable', 'isBroken',
		# 'canFillWithLiquid', 'isFilledWithLiquid', 'fillLiquid', 'dirtyable',
		# 'isDirty', 'canBeUsedUp', 'isUsedUp', 'cookable', 'isCooked', 'temperature',
		# 'isHeatSource', 'isColdSource', 'sliceable', 'isSliced', 'openable', 'isOpen',
		# 'openness', 'pickupable', 'isPickedUp', 'moveable', 'mass', 'salientMaterials',
		# 'receptacleObjectIds', 'distance', 'objectType', 'objectId', 'assetId', 'parentReceptacles',
		# 'controlledObjects', 'isMoving', 'axisAlignedBoundingBox', 'objectOrientedBoundingBox'])
		for object in event.metadata["objects"]:
			name = object["name"].lower()
			self.objects[name] = object["objectId"]
			temporary_objects[object["objectId"]] = name
			# Rule: type(ObjectIdentifier, ObjectType)
			self.rules.append(["type", name, object["objectType"]])
			# Rule: visible(VisibleObject)
			if object["visible"]:
				self.rules.append(["visible", name])
			# Rule: interactable(InteractableObject)
			if object["isInteractable"]:
				self.rules.append(["interactable", name])
			# Rule: receptacle(ReceptacleObject)
			if object["receptacle"]:
				self.rules.append(["receptacle", name])
			# Rule: toggleable(ToggleableObject)
			if object["toggleable"]:
				self.rules.append(["toggleable", name])
			# Rule: toggled(Object)
			if object["isToggled"]:
				self.rules.append(["toggled", name])
			# Rule: breakable(Object)
			if object["breakable"]:
				self.rules.append(["breakable", name])
			# Rule: broken(Object)
			if object["isBroken"]:
				self.rules.append(["broken", name])
			# Rule: canfillwithliquid(Object)
			if object["canFillWithLiquid"]:
				self.rules.append(["canfillwithliquid", name])
			# Rule: filledwith(Object, Liquid)
			if object["isFilledWithLiquid"]:
				self.rules.append(["filledwith", name, object["fillLiquid"]])
			# Rule: dirtyable(Object)
			if object["dirtyable"]:
				self.rules.append(["dirtyable", name])
			# Rule: dirty(Object)
			if object["isDirty"]:
				self.rules.append(["dirty", name])
			# Rule: canbeusedup(Object)
			if object["canBeUsedUp"]:
				self.rules.append(["canbeusedup", name])
			# Rule: usedup(Object)
			if object["isUsedUp"]:
				self.rules.append(["usedup", name])
			# Rule: cookable(Object)
			if object["cookable"]:
				self.rules.append(["cookable", name])
			# Rule: cooked(Object)
			if object["isCooked"]:
				self.rules.append(["cooked", name])
			# Rule: temperature(Object, Temperature)
			self.rules.append(["temperature", name, object["temperature"]])
			# Rule: heatsource(Object)
			if object["isHeatSource"]:
				self.rules.append(["heatsource", name])
			# Rule:  coldsource(Object)
			if object["isColdSource"]:
				self.rules.append(["coldsource", name])
			# Rule: sliceable(Object)
			if object["sliceable"]:
				self.rules.append(["sliceable", name])
			# Rule: sliced(Object)
			if object["isSliced"]:
				self.rules.append(["sliced", name])
			# Rule: openable(Object)
			if object["openable"]:
				self.rules.append(["openable", name])
			# Rule: open(Object)
			if object["isOpen"]:
				self.rules.append(["open", name])
			# Rule: pickupable(Object)
			if object["pickupable"]:
				self.rules.append(["pickupable", name])
			# Rule: moveable(Object)
			if object["moveable"]:
				self.rules.append(["moveable", name])
			# Rule: hasmass(Object, Mass)
			self.rules.append(["hasmass", name, object["mass"]])
			# Rule: madeof(Object, Material)
			if object["salientMaterials"]:
				self.rules.append(["madeof", name, object["salientMaterials"]])
			# Rule: in(ObjectInReceptacle, Receptacle)
			if object["receptacleObjectIds"]:
				for inside_object in object["receptacleObjectIds"]:
					temporary_rules.append(["in", inside_object, name])
			# Rule: controls(ObjectThatControls, ControlledObject) i.e. controls(stoveknob, stoveburner)
			if object["controlledObjects"]:
				temporary_rules.append(["controls", name, object["controlledObjects"][0]])
		for rule in temporary_rules:
			if rule[0] == "in":
				rule[1] = temporary_objects[rule[1]]
				self.rules.append(rule)
			if rule[0] == "controls":
				rule[2] = temporary_objects[rule[2]]
				self.rules.append(rule)
		print(self.rules)