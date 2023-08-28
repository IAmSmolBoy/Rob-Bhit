# Dependencies
from multiprocessing import Pipe, Process
from flask import Flask, request
from dotenv import load_dotenv

load_dotenv()

# Mongo
# from mongo import HaasCNCData, OmronCobot
import pymongo

client = pymongo.MongoClient("mongodb://localhost:27017/")
mongoDB = client["Siemens_Competition"]

HaasCNCData = mongoDB["Haas_Machine_Data"]
OmronCobot = mongoDB["Omron_Cobot"]
users = mongoDB["Users"]

# Helper
from helper import *

# Connections
from connections import IPAddr

# Variables
jointData = {}






getJoint = lambda : jointData

app = Flask(__name__)

@app.route('/', methods=['GET'])
def get():
    return { 'hello': 'world'}

@app.route('/login', methods=['POST'])
def login():
    
    userCredentials = request.json

    user = users.find_one({
        "email": userCredentials["email"],
        "password": userCredentials["password"]
    })
    
    if user == None:
        return { "error": "Incorrect credentials" }

    return { "login": True }

@app.route('/register', methods=['POST'])
def register():
    
    userCredentials = request.json

    user = users.find_one({ "email": userCredentials["email"] })
    
    if user != None:
        return { "error": "User with this email already exists" }

    users.insert_one(userCredentials)
    return { "message": "User registered sucessfully" }

# @app.route('/cnc', methods=['GET'])
# def cnc():

#     data = HaasCNCData.find({}, { '_id': False })
    
#     if data == None:
#         return { "error": "CNC data not found" }

#     return list(data)

@app.route('/current/<machine>', methods=['GET'])
def current(machine):
    global jointData

    match machine:
        case "cnc":
            data = HaasCNCData.find_one(
                {},
                { '_id': False },
                sort=[( '_id', pymongo.DESCENDING )]
            )
            
            if data == None:
                return { "error": "CNC data not found" }

            return data
        
        case "cobot":
            print(getJoint())
            return getJoint()

def extractData():
    global jointData

    while True:
        jointData = get_modbus_data()
        print(jointData)
        sleep(1)
        
if __name__ == '__main__':
    parent_conn,child_conn = Pipe()
    p = Process(target=extractData)
    p.start()
    p = Process(target=app.run(debug=True))
    p.start()
    
    # app.run(debug=True, host=IPAddr)
    