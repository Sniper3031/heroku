# -*- coding: utf-8 -*-

from bottle import route, run, request, template, get, post, error, default_app, response
import requests
from lxml import etree
import sys
reload(sys)
sys.setdefaultencoding("utf-8")

key="TW737s3ht4KFvtZp"
url_base="https://api.eventful.com/rest/events/search?"

@route("/conciertos", method="get")
def conciertos():
     return template("template1.tpl")

@route ("/conciertos", method="post")
def conciertos2():
    group = request.forms.get('group')
    payload = {'keywords':group, 'app_key':key}
    r = requests.get(url_base,params=payload)
    return r	

@route ( "/conciertos", method="get")
def conciertos3():
	r = request.forms.get('r')
	if r.status_code == 200 :
		doc = etree.parse(r)
		raiz = doc.getroot()
		conciertos = raiz.findall("events/event")
		for concierto in conciertos:
			r2 = concierto.find("title").text

		return r2


run(host='localhost', port=8080, debug=True, reloader=True)
