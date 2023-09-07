from pyModbusTCP.client import ModbusClient
import os
from dotenv import load_dotenv

load_dotenv()

HOST = os.getenv("MODBUS_HOST")

def connect_modbus():
    
    return ModbusClient(
        host="0.0.0.0",
        auto_open=True
    )

