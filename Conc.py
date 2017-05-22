# -*- coding: utf-8 -*-

from bottle import route,run, request

key="TW737s3ht4KFvtZp"

@route("/conciertos", method="get")
def conciertos():
     return template1.tpl

@route ("/conciertos", method="post", value="Buscar")
def conciertos2():
    group = request.forms.get('group')
    contenido=""



run(host='localhost', port=8080, debug=True, reloader=True)