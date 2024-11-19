# INFO8995-CO-Navneet-Ass3
This is for the assignment 3 
# Advanced Containers with Docker Compose

## Overview
This project demonstrates a prototype solution for exposing an internal web service to external sources via a load balancer.

### Components
1. **Web Service**: A Python-based service that serves a configurable message from a file (`config.txt`).
2. **Load Balancer**: An NGINX-based service that forwards requests to the web service.

### Features
- Health checks for both services.
- Persistent configuration using Docker volumes.
- Modular and networked container design.

## Prerequisites
- Docker and Docker Compose.

## Setup Instructions
1. Clone the repository and navigate to the project folder.
2. Build and start the services with:
    docker-compose up --build
Access the web service through the load balancer:
URL: http://localhost:8080

## Best Practices Followed
Services restart automatically with restart: unless-stopped.
Health checks to ensure readiness of services.
Network isolation using a custom Docker network.
## Stopping the Services
To stop and remove the containers, run:

docker-compose down

## Directory Structure

project/
├── docker-compose.yml    # Docker Compose configuration
├── webservice/           # Web service source code and Dockerfile
│   ├── Dockerfile
│   ├── config.txt        # Configuration file for the web service
│   ├── app.py            # Python application
│   └── requirements.txt  # Python application requirements
├── load_balancer/        # NGINX load balancer configuration and Dockerfile
│   ├── Dockerfile
│   └── nginx.conf        # NGINX configuration
    └── wait-for-it.sh    # A script file for wait time before running the service.

The config.txt file in the webservice/ directory can be modified to change the message served by the web service.
