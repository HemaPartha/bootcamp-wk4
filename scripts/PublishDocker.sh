#!/usr/bin/env bash
echo Publishing docker image........

docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
echo $DOCKER_USERNAME
docker build -t bootcamp .
docker images
docker tag bootcamp hemaparthasarathy/bootcamp
docker push hemaparthasarathy/bootcamp