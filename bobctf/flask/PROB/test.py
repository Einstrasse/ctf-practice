#-*- coding: utf-8 -*-
from flask import Flask, render_template
from flask import session, redirect, url_for, escape, request
import sys
reload(sys)
sys.setdefaultencoding('utf-8')
    
app = Flask(__name__)
app.secret_key = 'k1rh4_BoB_FLASK_WEB_PROB_WX/,?RT'

@app.route('/', methods=['GET','POST'])
def login():
	if request.method == 'GET':
		session['user'] 	= "admin"
		session['permission']	= True
		return "success"

if __name__ == "__main__":
	app.debug = True
	app.run(host='0.0.0.0' , port=10114, threaded=True)