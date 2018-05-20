#!/bin/bash

# Install Docker

sudo yum update -y
sudo yum install -y docker
sudo service docker start
sudo usermod -a -G docker ec2-user
docker info

# Download sample containerized application

sudo yum install -y git
git clone https://github.com/awslabs/ecs-demo-php-simple-app
cd ecs-demo-php-simple-app

# Build docker image and load it to ECR repository
aws configure # You will need an AccessKey and SecretAccessKey, probably not the way to go
aws ecr get-login --region eu-west-1
docker build -t ecr-repository .
docker tag ecr-repository:latest 963697544248.dkr.ecr.us-west-1.amazonaws.com/ecr-repository:latest
docker push 963697544248.dkr.ecr.us-west-1.amazonaws.com/ecr-repository:latest
