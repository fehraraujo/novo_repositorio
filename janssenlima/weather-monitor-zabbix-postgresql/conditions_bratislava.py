#!/usr/bin/python

# Simple Python script for getting weather conditions for some certain city. (Example: Bratislava) and writing them to PostgreSQL database.
# daniel @ portwd.com

import urllib2
import json
import datetime
import psycopg2

city = 'bratislava'
geolookup_id = '1'

vars_to_sql = [geolookup_id]
keys_to_sql = ['geolookup_id']

j = urllib2.urlopen("http://api.wunderground.com/api/45d10254e6d6b58c/conditions/q/IA/%s.json" % (city))
json_string = j.read()
parsed_json = json.loads(json_string)
current_observation = parsed_json['current_observation']

for key,value in current_observation.iteritems():
	value_type = type(value)
	if value_type is not dict:
		if value_type is unicode:
			vars_to_sql.append(value.encode('ascii', 'ignore'))
			keys_to_sql.append(key.encode('ascii', 'ignore'))
		else:
			vars_to_sql.append(value)
			keys_to_sql.append(key)
keys_to_sql = ', '.join(keys_to_sql)

pg_weather = psycopg2.connect("dbname='' user='' host='' password=''")
pg_weather_cursor = pg_weather.cursor()

weather_insert = "INSERT INTO conditions_bratislava(%s) VALUES %r" % (keys_to_sql,  tuple(vars_to_sql),)
pg_weather_cursor.execute(weather_insert)

pg_weather.commit()
pg_weather.close()

j.close()
