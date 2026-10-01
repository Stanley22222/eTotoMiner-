
from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/")
def home():
    return """
    <h1>eTotoMiner</h1>
    <p>Backend la ap mache!</p>
    """

@app.route("/api/status")
def status():
    return jsonify({
        "status": "online",
        "app": "eTotoMiner"
    })

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=10000)
