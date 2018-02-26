#!/usr/bin/env python
from flask import Flask, render_template
from flask import request
from jinja2 import Template, FileSystemLoader
from jinja2 import Environment, PackageLoader

env = Environment(
	loader = FileSystemLoader('/home/bobgil/Desktop/bobctf/jinjaninja/templates')
)

# template = Template('Hello {{ name }}!')
# print template.render(name="John Doe")

app = Flask(__name__)

@app.route('/')
def default():
	return render_template('register.html')

@app.route('/register', methods=['GET', 'POST'])
def output():
	user_id = str(request.form['user'])
	html_str = """
<html>
<center>
<pre>
<h1>Welcome! """ + user_id + """ </h1>

You are in my page, But, There is nothing here.
if you need flag, think more!
</pre>
</center>
</html>
		"""
	# template = Template(html_str)
	template = env.from_string(html_str)
	return template.render()

if __name__== "__main__":
	app.run(host='0.0.0.0', port=10101, threaded=True)