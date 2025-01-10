import math
from flask import Flask, request, jsonify, render_template

app = Flask(__name__)

#prediction function
def predict_change_rate(ExerciseTypewalk, InclineRateup):
    intercept = 2.3695
    beta_ExerciseTypewalk = -0.7421
    beta_InclineRateup = 0.6865
    beta_interaction = 0.4139
    ln_scale = math.log(0.281)
    
    ln_change_rate = (intercept + 
    beta_ExerciseTypewalk * ExerciseTypewalk + 
    beta_InclineRateup * InclineRateup + 
    beta_interaction * ExerciseTypewalk * InclineRateup + 
    ln_scale)
    
    change_rate = math.exp(ln_change_rate)
    return change_rate


def convert_to_binary(value, type_):
    if type_ == "ExerciseTypewalk":
        if value == "walk":
            return 1
        elif value == "run":
            return 0
    if type_ == "InclineRateup":
        if value == "down":
            return 0
        elif value == "up":
            return 1
    return None   

#to display the form
@app.route('/')
def home():
    return render_template('index.html')

#to submit the form
@app.route('/predict', methods=['POST'])
def predict():
    try:
        ExerciseTypewalk_str = request.form['ExerciseTypewalk']
        InclineRateup_str = request.form['InclineRateup']

        ExerciseTypewalk = convert_to_binary(ExerciseTypewalk_str, 'ExerciseTypewalk')
        InclineRateup = convert_to_binary(InclineRateup_str, 'InclineRateup')

        if ExerciseTypewalk is None or InclineRateup is None:
            return render_template('index.html', error = "Invalid input. Please select valid inputs.")


    except ValueError:
        return render_template('index.html', error = "Please provide valid input values.")

    result = predict_change_rate(ExerciseTypewalk, InclineRateup)

    result_with_bpm = f"{result:.2f} BPM"

    return render_template('index.html', result = result_with_bpm, ExerciseTypewalk = ExerciseTypewalk, InclineRateup = InclineRateup)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port = 5000)
    
