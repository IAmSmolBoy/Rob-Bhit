import pymongo

client = pymongo.MongoClient("mongodb://localhost:27017/")
mongoDB = client["Siemens_Competition"]

HaasCNCData = mongoDB["Haas_Machine_Data"]
OmronCobot = mongoDB["Omron_Cobot"]
users = mongoDB["Users"]