#!/bin/bash
aws s3 cp s3://awsbucketforcodedeploy/CodeBuild/LoginWebApp-1.war /tmp
sudo mv /tmp/LoginWebApp-1.war /home/ec2-user/apache-tomcat-8.5.92/webapps
sudo /home/ec2-user/apache-tomcat-8.5.92/bin/startup.sh
chmod -R 777 /home/ec2-user/apache-tomcat-8.5.92/webapps/LoginWebApp-1.war
