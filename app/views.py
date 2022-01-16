from app import app

@app.route('/')
def home():
    return "good morning Mellisa!"
