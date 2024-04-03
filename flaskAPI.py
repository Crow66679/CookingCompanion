from flask import Flask
import json

app = Flask(__name__)
json_file = open("CC.json")
json_data = json.load(json_file)
json_file.close()

@app.route("/")
def index():
    return json_data, 200, {"Access-Control-Allow-Origin": "*", "Content-Type": "application/json"}

app.run()