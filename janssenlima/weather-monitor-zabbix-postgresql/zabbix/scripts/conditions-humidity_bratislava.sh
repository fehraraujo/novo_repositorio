#!/bin/bash

temp=`sudo psql -U weather_wunderground --no-password  -c "SELECT DISTINCT relative_humidity FROM conditions_bratislava WHERE timestamp >= NOW() - '1 hour'::INTERVAL";`
echo $temp | awk -F" " '{print $3 }' | sed '$s/.$//'
