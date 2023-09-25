# Dependencies
import json
from multiprocessing import Manager, Process
import random
from flask import Flask, jsonify, request
from dotenv import load_dotenv
from time import sleep

load_dotenv()

# Mongo
import pymongo

client = pymongo.MongoClient("mongodb://localhost:27017/")
mongoDB = client["Siemens_Competition"]

HaasCNCData = mongoDB["Haas_Machine_Data"]
OmronCobot = mongoDB["Omron_Cobot"]
jointsDB = mongoDB["Joints"]
turnsDB = mongoDB["Turns"]
users = mongoDB["Users"]

# get Ip Addr
import socket
hostname = socket.gethostname()
IPAddr = socket.gethostbyname(hostname)

# Helper
from helper import *






app = Flask(__name__)

# @app.route('/', methods=['GET'])
# def get():
#     return { 'hello': 'world'}

# @app.route('/login', methods=['POST'])
# def login():
    
#     userCredentials = request.json

#     user = users.find_one({
#         "email": userCredentials["email"],
#         "password": userCredentials["password"]
#     })
    
#     if user == None:
#         return { "error": "Incorrect credentials" }

#     return { "login": True }

# @app.route('/register', methods=['POST'])
# def register():
    
#     userCredentials = request.json

#     user = users.find_one({ "email": userCredentials["email"] })
    
#     if user != None:
#         return { "error": "User with this email already exists" }

#     users.insert_one(userCredentials)
#     return { "message": "User registered sucessfully" }

# @app.route('/cnc', methods=['GET'])
# def cnc():

#     data = HaasCNCData.find({}, { '_id': False })
    
#     if data == None:
#         return { "error": "CNC data not found" }

#     return list(data)

# @app.route('/current/<machine>', methods=['GET'])
# def current(machine):
#     match machine:
#         case "cnc":
#             data = HaasCNCData.find_one(
#                 {},
#                 { '_id': False },
#                 sort=[( '_id', pymongo.DESCENDING )]
#             )
            
#             if data == None:
#                 return { "error": "CNC data not found" }

#             return data
        
#         case "cobot":

            # return {
            #     "Joint 1": 0.0,
            #     "Joint 2": 0.0,
            #     "Joint 3": 0.0,
            #     "Joint 4": 0.0,
            #     "Joint 5": 0.0,
            #     "Joint 6": 0.0
            # }

            # return jointsDB.find_one({}, { '_id': False })

# @app.route('/turns', methods=['GET'])
# def turns():
#     return turnsDB.find_one({}, { '_id': False })
    # return {
    #     "abc": 0.0
    # }

@app.route('/joints', methods=['GET'])
def joints():
    return {
        "angles": jointsDB.find_one({}, { '_id': False }),
        "turns": turnsDB.find_one({}, { '_id': False })
    }

@app.route('/reset-turns', methods=['POST'])
def resetTurns():
    turnsDB.find_one_and_replace({}, {
        "Joint 1": 0.0,
        "Joint 2": 0.0,
        "Joint 3": 0.0,
        "Joint 4": 0.0,
        "Joint 5": 0.0,
        "Joint 6": 0.0,
    })
    return {}

def extractData():

    while True:

        prevJoints = jointsDB.find_one({}, { '_id': False })
        turns = turnsDB.find_one({}, { '_id': False })

        # OmronCobot
        # temp = get_modbus_data()

        # for joint, angle in prevJoints.items():
        #     if joint in temp:

        #         turns[joint] += abs(temp[joint] - angle) / 360

        #     else:

        #         temp[joint] = angle / 360

        # jointsDB.find_one_and_replace({}, temp)
        # turnsDB.find_one_and_replace({}, turns)

        # sleep(1)



        temp = prevJoints.copy()
        for joint, angle in temp.items():
            temp[joint] = angle + random.random() * 10 - 5

            if temp[joint] < 0:
                temp[joint] = 0.0

            elif temp[joint] > 360:
                temp[joint] = 360.0
        

        for joint, angle in prevJoints.items():
            turns[joint] += abs(temp[joint] - prevJoints[joint]) / 360

        jointsDB.find_one_and_replace({}, temp)
        turnsDB.find_one_and_replace({}, turns)

        sleep(1)

        
if __name__ == '__main__':

    extract = Process(target=extractData)
    extract.start()
    app.run(debug=True)
    
    # app.run(debug=True, host=IPAddr)
    