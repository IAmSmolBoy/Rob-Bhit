from pyModbusTCP.client import ModbusClient
import os
from dotenv import load_dotenv

load_dotenv()

HOST = os.getenv("MODBUS_HOST")

def connect_modbus():
    
    return ModbusClient(
        host=os.getenv("MODBUS_HOST"),
        auto_open=True
    )