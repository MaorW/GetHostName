from flask import Flask
import  platform

# Creating the instance of the class Flask
app = Flask(__name__)

# Using the decorator to create the URL for the web application
@app.route('/')
# The function will return the remote srv ip address
def hello_world():
    host_name = platform.node()
    return '<h1> The host name is: ' + host_name

# Run the application
if __name__ == '__main__':
    app.run(debug=False)