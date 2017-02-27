#!/bin/bash

TAG=${1:-latest}

echo "Tag name: ${TAG}"

# assign a name for this microservice
ms_name=demo-ms

echo "Loging into ECR (west)..."
aws ecr get-login --region us-west-1 | bash

echo "Starting build..."
project_dir=`find . -maxdepth 2 -name "pom.xml" -print | sed -e 's/.pom.xml$//g'`
cd $project_dir
mvn clean install

echo "Building Docker image..."
cd ..
docker build -t $ms_name .

echo "Tagging our microservice..."
docker tag $ms_name 132439413064.dkr.ecr.us-west-1.amazonaws.com/$ms_name:${TAG}

echo "Tagging our microservice..."
docker push 132439413064.dkr.ecr.us-west-1.amazonaws.com/$ms_name:${TAG}

echo "Done"
