import socket
import logging

class ScaspClient():
    def __init__(self, host_ip):
        port = 5602
        self.client_socket = socket.socket()
        self.client_socket.connect((host_ip, port))

    def __del__(self):
        self.client_socket.close()

    def send_text(self, message):
        self.client_socket.send(message.encode())  # send message
        data = self.client_socket.recv(16384).decode()  # receive response
        logging.info("s(CASP) Server Data: " + data)
        return data