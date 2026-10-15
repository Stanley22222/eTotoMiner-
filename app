from flask import Flask, jsonify, render_template
import os

app = Flask(__name__)

@app.route("/")
def home():
    return """
    <!DOCTYPE html>
    <html lang="ht">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>eTotoMiner</title>
    </head>
    <body>
        <h1>eTotoMiner</h1>
        <p>Backend la konekte avèk siksè.</p>
        <p>Aplikasyon an ap fonksyone sou Render.</p>
    </body>
    </html>
    """

@app.route("/api/status")
def status():
    return jsonify({
        "status": "online",
        "app": "eTotoMiner"
    })

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 10000))
    app.run(host="0.0.0.0", port=port)
