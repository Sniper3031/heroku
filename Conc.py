#-*- coding: utf-8 -*-

from bottle import route, run, request, template, get, post, error, default_app, response, static_file
import requests
import json
import os
import sys
import urllib
import urllib2
import webapp2
import jinja2
from apiclient.discovery import build
from optparse import OptionParser
reload(sys)
sys.setdefaultencoding("utf-8")

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
	print r.url
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
	print r2.url
	if r.status_code==200 and r2.status_code==200:
		data=json.loads(r2.text.encode('utf-8'))
		for i in data['items']:
			ids.append(i['id']['videoId'])
			titles.append(i['snippet']['title'])
		
		doc = json.loads(r.text.encode('utf-8'))
		print doc
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

run(host='localhost', port=argv[1]), debug=True, reloader=True)
