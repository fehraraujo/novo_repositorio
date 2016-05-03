#!/bin/bash

temp=`sudo psql -U weather_wunderground --no-password  -c "SELECT DISTINCT wind_mph FROM conditions_bratislava WHERE timestamp >= NOW() - '1 hour'::INTERVAL";`
echo $temp | awk -F" " '{print $3 }'
