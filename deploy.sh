#!/bin/bash

if [ "$BRANCH_NAME" == "dev" ]; then
    # Build and push the Docker image to the Dev repository
    docker build -t dev-image:latest .
    docker login -u fasilm -p Fasil1090405@
    docker tag dev-image:latest fasilm/dev-image:latest
    docker push fasilm/dev-image:latest
elif [ "$BRANCH_NAME" == "master" ]; then
    # Build and push the Docker image to the Prod repository
    docker build -t prod-image:latest .
    docker login -u fasilm -p Fasil1090405@
    docker tag prod-image:latest fasilm/prod-image:latest
    docker push fasilm/prod-image:latest
fi
