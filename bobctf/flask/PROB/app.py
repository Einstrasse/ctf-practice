#-*- coding: utf-8 -*-
from flask import Flask, render_template
from flask import session, redirect, url_for, escape, request
from flag import *
import sys
reload(sys)
sys.setdefaultencoding('utf-8')

    
app = Flask(__name__)
app.secret_key = 'k1rh4_BoB_FLASK_WEB_PROB_WX/,?RT'


@app.route('/', methods=['GET', 'POST']) 
def index():
	return redirect(url_for('main'))

@app.route('/login', methods=['GET','POST'])
def login():
	if request.method == 'POST':
		nick 	= str(request.form['user'])
		if not nick : return render_template('error.html')
		else :

			if nick=="admin":
				session['user']		= str(nick)
				session['permission']	= False
			else :
				session['user'] 	= str(nick)
				session['permission']	= True
			return redirect(url_for('main'))
	else : return render_template('error.html')

@app.route('/main', methods=['GET','POST'])
def main():
	sess_nick 	= ""
	permission	= ""
	try :
		sess_nick 	= escape(session['user'])
		permission 	= escape(session['permission'])
	except :
		pass
	if sess_nick and permission:
		return render_template('main.html',nick=sess_nick, allow = permission);
	else :
		return render_template('main.html')

@app.route('/error')
def error() : 
	return render_template('error.html')

@app.route('/getflag')
def getflag():
	sess_nick = ""
	try :
		sess_nick = escape(session['user'])
	except :
		pass

	if sess_nick :
		if str(sess_nick) == str("admin") and session['permission'] == True : 
			return "THE KEY IS [" + str(flag())+"]"
		else : return redirect(url_for('main'))
	else : return redirect(url_for('main'))

@app.route('/loginOut')
def loginOut():
	sess_nick   = ""
	sess_email  = ""
	try :
		session.pop('user', None)
		session.pop('permission', None)
	except:
		pass
	return redirect(url_for('main'))


if __name__ == "__main__":
	app.debug = True
	app.run(host='0.0.0.0' , port=10114, threaded=True)


