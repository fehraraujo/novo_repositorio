# Weather monitoring with Zabbix, Weather Underground API, Python and PostgreSQL

Simple Python script for getting weather conditions for some certain city. (Example: Bratislava) and writing them to PostgreSQL database. Then we need to have a Zabbix server somewhere around, so we can watch some pretty graphs regarding temperature, pressure, dew point and so on..

This is just a first random draft, so do not expect much.

# Setup

### _Disclaimer: All the steps,configs,scripts and templates are dealing with example weather for city "Bratislava" (Slovak Republic.) Change it accordingly._ ###

- Create PostgreSQL user and database `weather` + grant him all the privileges over it.
- Create PostgreSQL table `conditions_your-city` by executing query in `create_table_conditions.sql`
- Append lines from `zabbix/zabbix_agentd.conf` to `zabbx_agentd.conf` on your system.
- Create directory: `/etc/zabbix/scripts/weather`
- Add scripts from `zabbix/scripts/*` to your newly created dir from previous step.
- Import Weather template `zabbix/templatet-weather.xml` into your ZABBIX server.
- Add cronjob `zabbix/crontab.list` into your cron daemon.
- Restart your ZABBIX agent daemon.

# Operation

- Every 30 minutes the `conditions` Python script will request JSON file with current weather data from Weather Underground. (http://www.wunderground.com/)
- ZABBIX server will be periodically asking for these values: `temperature`, `dew point`, `humidity`, `atmospheric pressure`, `visibility` and `wind speed`.
- You can view graphs.

# TODO

- Add weather forecast.
- Add triggers for temperature and it's actions - e.g. sending mail.
- Write blogpost with some closer looks.
