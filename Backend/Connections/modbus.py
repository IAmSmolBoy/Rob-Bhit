from pyModbusTCP.client import ModbusClient
from time import sleep
import os
from dotenv import load_dotenv

load_dotenv()

HOST = os.getenv("MODBUS_HOST")

def connect_modbus():

    print("test 4", HOST)
    
    return ModbusClient(
        host=HOST,
        auto_open=True
    )