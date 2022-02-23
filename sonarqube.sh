#!/bin/bash

    #Author : Dimitri
    #Date : 02/23/2022

## ----------  install and configure SonarQube on CentOS 7 -----------------

echo " Java 11 installation :"
yum update -y
yum install java-11-openjdk-devel -y
yum install java-11-openjdk -y
echo " Java 11 installation complited :"

echo " Download SonarQube latest versions :"
cd /opt
yum install wget -y
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
echo " Download SonarQube latest versions :"

echo " Java 11 installation :"
yum update -y
yum install java-11-openjdk-devel -y
yum install java-11-openjdk -y
echo " Java 11 installation complited :"

echo " Download SonarQube latest versions :"
cd /opt
yum install wget -y
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
echo " Download SonarQube latest versions :"

echo " Extract packages :"
unzip /opt/sonarqube-9.3.0.51899.zip
echo " Extract packages completed :"

echo " Change ownership :"
chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
./sonar.sh start
echo " Change ownership complited :"

sleep 3
echo " Sonarqube successfully :"