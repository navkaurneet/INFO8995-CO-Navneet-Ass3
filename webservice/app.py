from flask import Flask
import os

app = Flask(__name__)

path = r"/app/config.txt"  # Path inside the container
@app.route('/')
def get_message():
    with open(path, 'r') as file:
        message = file.read().strip()
    return f"Message from config file: {message}"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
