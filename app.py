from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "Learning docker with python flask framework!"

if __name__ == '__main__':
    app.run()


