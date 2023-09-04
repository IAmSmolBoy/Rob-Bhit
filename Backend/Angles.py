class Angles():
    def __init__(self):
        self.jointData = {}

    def set(self, jointData):
        
        self.jointData = jointData
        return jointData

    def get(self):
        return self.jointData