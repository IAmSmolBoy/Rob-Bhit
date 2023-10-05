from json import loads
    
class Joint():

    def __init__(self, angle: float = 0.0, turns: float = 0.0):
        self.angles = angle
        self.turns = turns

    def set(self, angles: float, turns: float) -> "Joint":
        self.angles = angles
        self.turns = turns

        return self

    def toDict(self) -> dict:
        return {
            "angle": self.angles,
            "turns": self.turns
        }

    @staticmethod
    def fromJson(jsonStr: str) -> "Joint":
        return Joint.fromDict(loads(jsonStr))

    @staticmethod
    def fromDict(jointData: dict) -> "Joint":
        joints = Joint()
        joints.set(
            jointData["angle"],
            jointData["turns"]
        )

        return joints