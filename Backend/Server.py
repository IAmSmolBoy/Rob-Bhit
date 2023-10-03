# Dependencies
import random
import os
import openai
from multiprocessing import Manager, Process
from flask import Flask, jsonify, request
from dotenv import load_dotenv
from time import sleep

load_dotenv()

# Mongo
import pymongo

client = pymongo.MongoClient(os.getenv("MONGODB_URI"))
mongoDB = client["Siemens_Competition"]

HaasCNCData = mongoDB["Haas_Machine_Data"]
OmronCobot = mongoDB["Omron_Cobot"]
jointsDB = mongoDB["Joints"]
turnsDB = mongoDB["Turns"]
messagesDB = mongoDB["Messages"]
users = mongoDB["Users"]

# get Ip Addr
import socket
hostname = socket.gethostname()
IPAddr = socket.gethostbyname(hostname)

# Helper
from helper import *






app = Flask(__name__)
openai.api_key = os.getenv("OPENAI_API_KEY")

@app.route('/ping', methods=['GET'])
def get():
    return {
        "message": "pong"
    }

# @app.route('/cnc', methods=['GET'])
# def cnc():

#     data = HaasCNCData.find({}, { '_id': False })
    
#     if data == None:
#         return { "error": "CNC data not found" }

#     return list(data)

@app.route('/login', methods=['POST'])
def login():

    user = users.find_one({
        "email": request.json["email"],
        "password": request.json["password"]
    }, { '_id': False })
    
    if user == None:
        return { "error": "Incorrect credentials" }

    return user

@app.route('/register', methods=['POST'])
def register():
    
    user = users.find_one({ "email": request.json["email"] }, { '_id': False })
    
    if user != None:
        return { "error": "User with this email already exists" }

    users.insert_one(request.json)

    return { "message": "User registered sucessfully" }

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
    return {
        "message": "Successful"
    }

@app.route('/messages', methods=['GET'])
def messages():
    
    return jsonify(list(messagesDB.find({}, { '_id': False })))

@app.route('/send-message', methods=['POST'])
def sendMessage():
    messagesDB.insert_one(request.json)
    return {} 

def extractData():

    print(os.getenv("MONGODB_URI"))

    while True:
        
        try:
            prevJoints = jointsDB.find_one({}, { '_id': False })
            turns = turnsDB.find_one({}, { '_id': False })
        except:
            prevJoints = {
                "Joint 1": 0.0,
                "Joint 2": 0.0,
                "Joint 3": 0.0,
                "Joint 4": 0.0,
                "Joint 5": 0.0,
                "Joint 6": 0.0,
            }
            turns = {
                "Joint 1": 0.0,
                "Joint 2": 0.0,
                "Joint 3": 0.0,
                "Joint 4": 0.0,
                "Joint 5": 0.0,
                "Joint 6": 0.0,
            }
            jointsDB.insert_one(prevJoints)
            turns.insert_one(turns)

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
    # app.run()
    app.run(debug=True)
    
    # app.run(debug=True, host=IPAddr)