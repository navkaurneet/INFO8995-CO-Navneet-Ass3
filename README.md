# INFO8995-CO-Navneet-Ass3
This is for the assignment 3 
# Web Service with NGINX Load Balancer

## Overview
As per the requirements, this project consits of a simple web service (pyhton based) that reads a message from a config file and serves it over HTTP. An NGINX load balancer forwards external traffic to the web service.

## Pre-requisite 
Docker and Docker Compose

## Setup

Run the below command in the main project folder
    "docker-compose up --build"

Then we can check and access the web service through the load balancer by going to below link:
    http://localhost:8080


## Components

- webservice: This is webservice running on python flask which read the message from 'config.txt' file.
- load_balancer: An NGINX load balancer that forwards external requests to the web service.

- config.txt: This is the custom message displayed by the webserver. This can be changed according to need.
- Dockerfile: There are two docker file, one for the web server and another is for load balancer.
