from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def hello_world():
    return "Hello World", 200

@app.route('/bad-request')
def bad_request():
    return jsonify({"error": "Bad Request"}), 400

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)

