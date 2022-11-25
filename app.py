from flask import Flask,render_template,request,redirect

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('basic.html')

@app.route('/student',methods = ['POST', 'GET'])
def studnet():
    if request.method == 'POST':
        firstName = request.form['fname']
        lastName = request.form['lname']
        return render_template('grades.html',fname=firstName,lname=lastName)
    else:
        return render_template('basic.html')
    

@app.route('/login')
def login():
    return render_template('login.html')


@app.route('/signup')
def signup():
    return render_template('signup.html')

if __name__ == '__main__':
    app.run(debug=True,port=5003)
    
