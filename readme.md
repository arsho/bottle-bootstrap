Bottle Bootstrap
================
[![Build Status](https://travis-ci.org/arsho/bottle-bootstrap.svg?branch=master)](https://travis-ci.org/arsho/bottle-bootstrap) 
[![Size](https://img.shields.io/github/size/arsho/bottle-bootstrap/app.py.svg?)](https://github.com/arsho/bottle-bootstrap/)

#### System Information:

 * [Python 3.6](https://www.python.org/downloads/)
 * [Bootstrap 3.3.7](https://getbootstrap.com/docs/3.3/getting-started/)
 * [bottle 0.13-dev](https://bottlepy.org/docs/dev/tutorial.html#installation)
						
Here is a working approach of adding static files like CSS/JS in **Bottle** web project. I am using Bootstrap and Python 3.6.

**Project structure**

```bash
project
¦   app.py
¦   bottle.py
¦
+---static
¦   +---asset
¦       +---css
¦       ¦       bootstrap-theme.css
¦       ¦       bootstrap-theme.css.map
¦       ¦       bootstrap-theme.min.css
¦       ¦       bootstrap-theme.min.css.map
¦       ¦       bootstrap.css
¦       ¦       bootstrap.css.map
¦       ¦       bootstrap.min.css
¦       ¦       bootstrap.min.css.map
¦       ¦       custom.css
¦       ¦
¦       +---fonts
¦       ¦       glyphicons-halflings-regular.eot
¦       ¦       glyphicons-halflings-regular.svg
¦       ¦       glyphicons-halflings-regular.ttf
¦       ¦       glyphicons-halflings-regular.woff
¦       ¦       glyphicons-halflings-regular.woff2
¦       ¦
¦       +---js
¦               bootstrap.js
¦               bootstrap.min.js
¦               jquery.min.js
¦               npm.js
¦
+---views
		index.tpl
```

**app.py**

```python
from bottle import Bottle, run, \
	 template, debug, static_file

import os, sys

dirname = os.path.dirname(sys.argv[0])

app = Bottle()
debug(True)

@app.route('/static/<filename:re:.*\.css>')
def send_css(filename):
	return static_file(filename, root=dirname+'/static/asset/css')

@app.route('/static/<filename:re:.*\.js>')
def send_js(filename):
	return static_file(filename, root=dirname+'/static/asset/js')

@app.route('/')
def index():
	data = {"developer_name":"Ahmedur Rahman Shovon",
			"developer_organization":"Datamate Web Solutions"}
	return template('index', data = data)

run(app, host='localhost', port = 8080)
```
	
	
**index.tpl**

```html
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Bottle web project template">
	<meta name="author" content="datamate">
	<link rel="icon" href="/static/favicon.ico">		
	<title>Project</title>
	<link rel="stylesheet" type="text/css" href="/static/bootstrap.min.css">
	<script type="text/javascript" src="/static/jquery.min.js"></script>
	<script type="text/javascript" src="/static/bootstrap.min.js"></script>	
</head>
<body>
	<!-- Static navbar -->
	<nav class="navbar navbar-default navbar-static-top">
		<div class="container">
			<div class="row">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Project</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="../navbar/">Home</a></li>
						<li><a href="./">Github</a></li>
						<li><a href="../navbar-fixed-top/">Stackoverflow</a></li>
					</ul>
				</div><!--/.nav-collapse -->
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="jumbotron">
			<h2>Welcome from {{data["developer_name"]}}</h2>
				<p>This is a template showcasing the optional theme stylesheet included in Bootstrap. Use it as a starting point to create something more unique by building on or modifying it.</p>
			</div>
		</div>
		<!--./row-->
		<div class="row">
			<hr>
			<footer>
				<p>&copy; 2017 {{data["developer_organization"]}}.</p>
			</footer>			
		</div>
	</div> 
	<!-- /container -->
</body>
</html>
```
	
	
**Output**

[![bottle bootstrap demo][1]][1]

  [1]: https://raw.githubusercontent.com/arsho/bottle-bootstrap/master/bottle_bootstrap.png

Contribute
-------------

Create Github Pull Request https://github.com/arsho/bottle-bootstrap/pulls

If you have suggestion use GitHub issue system or send a message in Facebook https://www.facebook.com/ars.shovon.

Change log
----------

See [CHANGELOG](https://github.com/arsho/bottle-bootstrap/blob/master/CHANGELOG.rst)
