import json
from flask import Flask, jsonify, request
# from flask_pymongo import PyMongo
from bson import json_util
import pymongo

MONGODB_URI = "mongodb://db:27017/example"
# MONGODB_URI = os.environ.get("MONGODB_ENDPOINT")

app = Flask(__name__)

# MongoDB
app.config["MONGO_URI"] = MONGODB_URI
# mongo = PyMongo(app)
client = pymongo.MongoClient(MONGODB_URI)
db = client.db

# Collections
jointsDB = db.joints
usersDB = db.users
messagesDB = db.messages

def parse_json(data):
    return json.loads(json_util.dumps(data))

@app.route('/')
def hello_world():
    return 'Hello, World!'

@app.route('/login', methods=['POST'])
def login():

    user = usersDB.find_one({
        "email": request.json["email"],
        "password": request.json["password"]
    }, { '_id': False })
    
    if user == None:
        return { "error": "Incorrect credentials" }

    return user

@app.route('/register', methods=['POST'])
def register():
    
    user = usersDB.find_one({ "email": request.json["email"] }, { '_id': False })
    
    if user != None:
        return { "error": "User with this email already exists" }

    usersDB.insert_one(request.json)

    return { "message": "User registered sucessfully" }

@app.route('/joints', methods=['GET'])
def joints_endpoint():

    jointData = list(jointsDB.find({}, { '_id': False }))

    # print(jointData, file=sys.stderr)
    
    # return map(lambda joint : Joint.fromDict(joint), jointData)
    return jointData

@app.route('/reset-turns', methods=['POST'])
def resetTurns():
    jointsDB.update_many({}, {
        "$set": {
            "turns": 0.0,
        }
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

if __name__ == "__main__":

    app.run(debug=True)
