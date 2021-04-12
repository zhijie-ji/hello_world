#!/bin/bash
app="docker.test"
sudo docker build -t ${app} .
sudo docker run -p 8000:8000 --name ${app} -d ${app} 
