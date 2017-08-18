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
