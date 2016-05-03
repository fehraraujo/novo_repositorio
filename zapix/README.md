# Zapix - online Zabbix API tool

Visit http://monitoringartist.github.io/zapix/ and test your Zabbix API query
in your broser. Autocomplete offers only Zabbix 3.0 API methods and doc, however
you can use still write older methods manually. All credentials are stored in 
your browser only.

## Quick start

Connect to http://zabbix.org/zabbix/ (guest user) and get all hosts:

![Zapix doc](https://raw.githubusercontent.com/monitoringartist/zapix/gh-pages/doc/zabbix-zapix.gif)

Please donate to author, so he can continue to publish other awesome projects 
for free:

[![Paypal donate button](http://jangaraj.com/img/github-donate-button02.png)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=8LB6J222WRUZ4)

# Examples

- [host.get](http://monitoringartist.github.io/zapix/#apimethod=host.get&apiparams={%0A%20%20%20%20%22output%22%3A%20%22extend%22%2C%0A%20%20%20%20%22filter%22%3A%20{%0A%20%20%20%20%20%20%20%20%22host%22%3A%20[%0A%20%20%20%20%20%20%20%20%20%20%20%20%22Zabbix.org%22%2C%0A%20%20%20%20%20%20%20%20%20%20%20%20%22Linux%20server%22%0A%20%20%20%20%20%20%20%20]%0A%20%20%20%20}%0A})
- [script.get](http://monitoringartist.github.io/zapix/#apimethod=script.get&apiparams={%0A%20%20%20%20%22output%22%3A%20%22extend%22%0A})
- [user.get](http://monitoringartist.github.io/zapix/#apimethod=user.get&apiparams={%0A%20%20%20%20%22output%22%3A%20%22extend%22%0A})

# Original project

https://bitbucket.org/Vedmak/zapix

# Author

[Devops Monitoring zExpert](http://www.jangaraj.com 'DevOps / Docker / Kubernetes / Zabbix / Zenoss / Monitoring'), 
who loves monitoring systems, which start with letter Z. 
Those are Zabbix and Zenoss.

Professional monitoring services:

[![Monitoring Artist](http://monitoringartist.com/img/github-monitoring-artist-logo.jpg)]
(http://www.monitoringartist.com 'DevOps / Docker / Kubernetes / Zabbix / Zenoss / Monitoring')
