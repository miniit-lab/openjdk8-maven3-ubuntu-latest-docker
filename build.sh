#!/bin/sh

IMAGE=miniitlabs/openjdk8-maven3

docker build --force-rm --no-cache --compress -t $IMAGE:latest -f Dockerfile .

if [ $? -ne 0 ];
then
    exit $?
fi

docker login

if [ $? -ne 0 ];
then
    exit $?
fi

docker push $IMAGE

