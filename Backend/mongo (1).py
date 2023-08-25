import pymongo
import os
from dotenv import load_dotenv

load_dotenv()

mongo_uri = os.getenv("MONGO_URI")
database_name = os.getenv("DATABASE_NAME")
cnc_collection_name = os.getenv("CNC_COLLECTION_NAME")
user_collection_name = os.getenv("USER_COLLECTION_NAME")

# Connect to MongoDB
client = pymongo.MongoClient(mongo_uri)

# Access the database
database = client[database_name]

# Access the collection
cnc_collection = database[cnc_collection_name]
user_collection = database[user_collection_name]

# Get and Save CNC Data to MongoDB
def getCNCData():
    return list(cnc_collection.find())

def saveCNCData(data: dict):
    cnc_collection.insert_one(data)

# Get and Save User Data to MongoDB
def getUsers():
    return list(user_collection.find())

def addUser(data: dict):
    return user_collection.insert_one(data)

def filterUser(email=None, password=None, username=None):

    query = {}

    if email is not None:
        query["email"] = email

    if password is not None:
        query["password"] = password

    if username is not None:
        query["username"] = username

    return user_collection.find_one(query)