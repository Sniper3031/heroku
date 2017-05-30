#-*- coding: utf-8 -*-

import bottle
from bottle import route, run, request, template, get, post, error, default_app, response, static_file
import requests
import json
import os
import sys
from sys import argv
reload(sys)
sys.setdefaultencoding("utf-8")

bottle.debug(True)

key=os.environ['key']
url_base="https://api.eventful.com/json/events/search?"

group = ""

@route("/conciertos", method="get")
def conciertos():
     return template("template1.tpl")

@route ("/conciertos/result", method="post")
def conciertos2():
	group = request.forms.get('group')
	payload = {'keywords':group, 'app_key':key}
	r = requests.get(url_base,params=payload)
	lista=[]
	lista2=[]
	lista3=[]
	lista4=[]
	titles=[]		
	ids=[]
	ytkey=os.environ["ytkey"] 
	video="video"
	part="id,snippet"
	quantity=3
	payload2={"part":part,"key":ytkey, "q": group, "maxResults":quantity, "type":video}
	r2=requests.get('https://www.googleapis.com/youtube/v3/search',params=payload2)
	if r.status_code==200 and r2.status_code==200:
		data=json.loads(r2.text.encode('utf-8'))
		for i in data['items']:
			ids.append(i['id']['videoId'])
			titles.append(i['snippet']['title'])
		
		doc = json.loads(r.text.encode('utf-8')
		if doc["events"]: 

			for event in doc["events"]["event"]:
				lista.append(event["title"])
				lista2.append(event["start_time"])
				lista3.append(event["city_name"])
				lista4.append(event["country_name"])
		else:
			return template("templateERROR.tpl")
	else:
		return template("templateERROR.tpl")
		

	
	return template("template2.tpl", lista=lista, lista2=lista2, lista3=lista3, lista4=lista4, titles=titles, ids=ids)


@route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='static')

run(host='0.0.0.0', PORT=argv[1])

#run(host='localhost', port=8080, debug=True, reloader=True)
