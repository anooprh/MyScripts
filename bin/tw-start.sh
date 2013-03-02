#!/bin/bash

# Pulls latest TAMA-Web from Github,Complie, Load Seed Data and Start Jetty Server on 127.0.0.1:8080

cd ~/Projects/MOTECH/TAMA-Web
mvn clean install
cd tama.web/
mvn -P load.seed.data
mvn jetty:run 

