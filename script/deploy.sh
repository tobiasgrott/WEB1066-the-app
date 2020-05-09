#!/usr/bin/env bash
#set -e

echo "Logging in to Docker"
echo "${DOCKER_PASSWORD}" | docker login --username "${DOCKER_LOGIN}" --password-stdin 
echo "Pulling Dockerfile"
docker pull zutherb/monolithic-shop
echo "Tagging Dockerfile"
docker tag zutherb/monolithic-shop:latest $DOCKER_LOGIN/monolithic-shop:latest
echo "Pushing to Registry"
docker push $DOCKER_LOGIN/monolithic-shop:latest
echo "Deployment Done"


