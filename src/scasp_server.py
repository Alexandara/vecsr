import logging
import socket
from time import sleep

import scaspharness

if __name__ == '__main__':
    scasprunner = scaspharness.ScaspHarness(None)
    filename = "scasp_knowledge_base/generated_scasp.pl"

    # get the hostname
    host = socket.gethostname()
    port = 5602  # initiate port no above 1024
    print("Waiting for connection...")
    while True:
        try:
            server_socket = socket.socket()  # get instance
            # look closely. The bind() function takes tuple as argument
            server_socket.bind((host, port))  # bind host address and port together
            # configure how many client the server can listen simultaneously
            server_socket.listen(1)
            conn, address = server_socket.accept()  # accept new connection
            print("Connection from: " + str(address))
            break
        except OSError:
            print("Not able to connect, retrying...")
            sleep(5)
    while True:
        # receive data stream. it won't accept data packet greater than 1024 bytes
        data = conn.recv(16384).decode()
        print("Received " + str(data))
        if not data:
            continue
        with open(filename, "w") as f:
            f.write(str(data))
        sleep(1)
        output = scasprunner.run_generated_scasp()
        if output:
            print("Success!")
            message = "s"
            for key in output[0].keys():
                message = message + "." + str(key) + "." + str(output[0][key])
            conn.send(message.encode())
        else:
            print("Failure.")
            conn.send("f".encode())
    conn.close()  # close the connection
    exit(0)