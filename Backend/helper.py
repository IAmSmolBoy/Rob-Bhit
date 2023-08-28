# ------------------------ Telnet ------------------------ 

import struct
from Connections.telnet import query_telnet

# Variables
COMMANDS = {
    "Serial No": 100
}
MACRO_COMMANDS = {
    "Date": 3011,
    "Time": 3012,
    "Tool In Spindle": 3026,
    "Spindle RPM": 3027,
    "Tool Life Monitor Counter": "5701-5800",
    "Max Spindle Speed": 40022,
    "Actual Position": "60100-60115",
    "Axis Drive Fault": "61000-61020",
    "Axis Transition Fault": "61050-61070",
    "Fault Register 1": "61100-61120",
    "Fault Register 2": "61150-61170",
    "Spindle Fault": "62050-62053",
    "Spindle Cable Fault": "62070-62073",
    "Spindle Overheat": "62080-62083",
    "Mocon IO Fault": 62400,
    "Mocon Fault 1": 62401,
    "Mocon Fault 2": 62402
}

# Extract Data from Haas CNC Machine
def get_cnc_data():

    data_entry = {}

    # Query non macro info
    for command, number in enumerate(MACRO_COMMANDS):
        data_entry[command] = query_telnet(str(number))

    # Query macro info
    for command, number in enumerate(COMMANDS):
        data_entry[command] = query_telnet(f"600 {number}")

    return data_entry

    # result = []
    # query_number = str(query_number)

    # # Check if command has a range
    # if "-" in query_number:
        
    #     # Get start and end macro numbers
    #     start, end = query_number.split("-")

    #     # Loop through to query each value in the range
    #     for query_number in range(int(start), int(end) + 1):
    #         result.append(query_telnet("600 " + str(query_number)))
    
    # else:

    #     # If command is a macro command, set command to ?Q600 <Command>
    #     if query_number not in NOT_MACRO:
    #         query_number = "600 " + query_number

    #     result.append(query_telnet(query_number))

    # return { command: result }
    


# Function to store data into JSON
# def store_in_txt(data: dict):
    
#     with open(FILEPATH, 'a') as file:
#         file.write(json.dumps(data) + "\n")



# ------------------------ Modbus ------------------------ 

from Connections.modbus import connect_modbus
from time import sleep

# Variables
MODBUS_COMMANDS = {
    "Joint 1": 7013,
    "Joint 2": 7015,
    "Joint 3": 7017,
    "Joint 4": 7019,
    "Joint 5": 7021,
    "Joint 6": 7023,
}
MODBUS = connect_modbus()

def dec_to_bin_str(dec):
    return '{0:016b}'.format(dec)

# Extract Data from Omron Cobot
def get_modbus_data():

    data_entry = {}

    # Query non macro info
    # for command, number in MODBUS_COMMANDS.items():

    #     [ word1, word2 ] = MODBUS.read_input_registers(number, 2)

    #     data_entry[command] = struct.unpack('!f', struct.pack('!I', int(dec_to_bin_str(word1) + dec_to_bin_str(word2), 2)))[0]

    # print(data_entry)
        
    # return data_entry
    return {
        "Joint 1": 12.34,
        "Joint 2": 12.34,
        "Joint 3": 12.34,
        "Joint 4": 12.34,
        "Joint 5": 12.34,
        "Joint 6": 12.34,
    }