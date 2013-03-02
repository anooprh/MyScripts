#!/bin/bash

# Pulls latest TAMA-Reports from Github,Complie, Load Seed Data and Start Jetty Server on 127.0.0.1:9979

cd ~/Projects/MOTECH/TAMA-Reports
mvn clean install
cd tama-reports-web/
mvn jetty:run 

