from telnetlib import Telnet
import os

HOST = os.getenv("HOST")
PORT = os.getenv("PORT")

# Code to query the Telnet
def query_telnet(query_number: str):

    # Connect to Telnet Server
    TELNET_CONNECTION = Telnet(HOST, PORT, timeout = 5)

    try:
        # Send Q Command
        TELNET_CONNECTION.write(f"?Q{query_number}".encode('utf-8') + b"\n")

        # Read and format telnet response
        response = TELNET_CONNECTION.read_until(b"\n")
        response_formatted = response.decode('utf-8').split(", ")[1].split("\r")[0]
        
        if response_formatted != "?":
            response_formatted = float(response_formatted)
        
        else:
            response_formatted = 0.0

        return response_formatted
    
    # Catch possible exceptions and errors
    except ConnectionRefusedError:
        print("Connection refused. Check the host and port.")

    except Exception as e:
        print("An error occurred:", e)

    return False