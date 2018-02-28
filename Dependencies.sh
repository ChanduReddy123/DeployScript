#!/bin/bash
touch logfile
#checking wether the tomcat server is installed or not
if [ "$(service tomcat7 status | grep  -e 'active (running)' -e  'active (exited)')" = "" ]
then
        echo "hello this is spandana installing tomcat8"
	sudo apt-get install -y tomcat7
fi
		fuser -k 9999/tcp
		sudo service tomcat7 restart
		echo "tomcat is installed `date`" >> logfile


#copying the file to tomcat server webapps

