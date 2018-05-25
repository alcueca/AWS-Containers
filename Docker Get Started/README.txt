This repository implements the lessons from https://docs.docker.com/get-started/

ECR.yaml: Creates an ECR repository called docker-get-started

ContainerInstance.yaml: It creates an EC2 Container Instance. Depends on NetworkAndSecurity.yaml

PushECSDemoImage.yaml: Creates an EC2 machine that acts as a container instance, it also dowloads a test application from git, builds an image from it, runs a container from the image, and pushes the container into the docker-get-started ECR repository. Depends on NetworkAndSecurity.yaml (from AWS-Containers) and ECR.yaml
