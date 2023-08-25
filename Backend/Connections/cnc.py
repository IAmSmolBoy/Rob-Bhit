# Imports

from time import sleep
from dotenv import load_dotenv

load_dotenv()

from mongo import *
from helper import *



# Variables

COMMANDS = {
    "Serial No": 100,
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







# Run

count = 20

# Continuously runs until user stops it
while count > 0:

    data_entry = {}

    # Loops through each command to query the command data
    for command, query_number in COMMANDS.items():

        # Queries Haas Machine to extract data
        query_result = get_cnc_data(command, query_number)

        # If query_result has multiple results, add each result to data_entry
        if len(query_result[command]) > 0:

            for i, entry in enumerate(query_result[command]):

                data_entry[f"{command} {i}"] = entry
        
        else:

            # Add into a data entry
            data_entry[command] = query_result[command][0]

    # Append the data entry into the txt file
    # store_in_txt(data_entry)

    # Save the data to MongoDB
    saveCNCData(data_entry)

    # Print the data, count - 1, wait for 10 seconds before restarting
    print(data_entry)
    count -= 1
    sleep(10)