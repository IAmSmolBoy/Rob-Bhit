import os
from random import random
from time import sleep
import pymongo

from Classes.joints import Joint

MONGODB_URI = os.environ.get("MONGODB_ENDPOINT")
client = pymongo.MongoClient(MONGODB_URI)
db = client.db

# Collections
jointsDB = db.joints
usersDB = db.users

while True:
        
    try:
        jointData = list(jointsDB.find({}, { '_id': False }))

        if len(jointData) == 0:
            for i in range(6):
                jointData.append(Joint(0.0, 0.0))
        else:
            jointData = list(map(lambda joint : Joint.fromDict(joint), jointData))
    except:
        jointData = []

        for i in range(6):
            jointData.append(Joint(0.0, 0.0))

    # OmronCobot
    # temp = get_modbus_data()

    # for joint, angle in prevJoints.items():
    #     if joint in temp:

    #         turns[joint] += abs(temp[joint] - angle) / 360

    #     else:

    #         temp[joint] = angle / 360

    # jointsDB.find_one_and_replace({}, temp)
    # turnsDB.find_one_and_replace({}, turns)

    # sleep(0.5)



    for jointNo, joint in enumerate(jointData):

        diff = random() * 10 - 5
        newAngle = joint.angle + diff

        if newAngle < 0:
            newAngle = 0.0

        elif newAngle > 360:
            newAngle = 360.0

        newTurns = joint.turns + abs(newAngle - joint.angle) / 360

        # print(f"newAngle: {newAngle}", f"newTurns: {newTurns}", f"abs(newAngle - joint.angle) / 360: {abs(newAngle - joint.angle) / 360}")

        jointData[jointNo].set(newAngle, newTurns)

    jointData = list(map(lambda joint : joint.toDict(), jointData))

    jointsDB.drop()
    jointsDB.insert_many(jointData)
    

    sleep(1)