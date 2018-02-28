#!bin/bash

 cd chandu/Java_sample_app/SpringMVCSecurityXML
  #building and creating the war file with maven
  mvn clean install
  cd target
  #renaming the war file to chandu.war
  mv SpringMVCSecurityXML.war chandu.war
  #executing the dependencies check on the server
  ssh ggk@54.244.209.186</home/chandu/Documents/Dependencies.sh
  #ssh ggk@54.244.209.186</home/chandu/Documents/copy.sh
 scp chandu.war ggk@54.244.209.186:/var/lib/tomcat7/webapps
  #giving acknowledgement about the deployment
 echo "your applictaion is deployed into tomcat server `date`" 
 google-chrome http://54.244.209.186:9999/chandu
 exit 0
 

