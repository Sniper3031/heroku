# -*- coding: utf-8 -*-

from bottle import route, run, request, template, get, post, error, default_app, response
import requests
import json
import os
import sys
reload(sys)
sys.setdefaultencoding("utf-8")

key=os.environ['key']
url_base="https://api.eventful.com/json/events/search?"

@route("/conciertos", method="get")
def conciertos():
     return template("template1.tpl")

@route ("/conciertos", method="post")
def conciertos2():
	group = request.forms.get('group')
	payload = {'keywords':group, 'app_key':key}
	r = requests.get(url_base,params=payload)
	print r.url
	lista=[]
	lista2=[]
	lista3=[]
	lista4=[]
	if r.status_code==200:
		doc = json.loads(r.text)
		for event in doc["events"]["event"]:
			lista.append(event["title"])
			lista2.append(event["start_time"])
			lista3.append(event["city_name"])
			lista4.append(event["country_name"])
	return template("template2.tpl", lista=lista, lista2=lista2, lista3=lista3, lista4=lista4)

run(host='localhost', port=8080, debug=True, reloader=True)
