#!/bin/bash

#Build docker image

docker build -t myreactapp_img .

#Build Docker Container

docker run --name myreactapp_con -d -p 80:80 myreactapp_img
