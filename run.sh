#!/bin/bash
echo "SERVING TOMCAT WEB AT http://localhost:8888/"
echo 
docker container run -it -p 8888:8080 tomcat-jsp-tutorial
