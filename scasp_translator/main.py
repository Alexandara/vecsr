import translator
from ai2thor.controller import Controller
from ai2thor.platform import CloudRendering
import time

if __name__ == '__main__':
    controller = Controller(
        visibilityDistance=3.0,
        scene="FloorPlan1"
    )
    while True:
        event = controller.step(action="RotateRight")
        time.sleep(.001)
    print(event.metadata)