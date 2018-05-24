#!/bin/bash

PATH=$PATH:/home/alberto/AWS/Git/AWS-Tooling/

aws ecr delete-repository \
    --repository-name ecs-course \
    --force

aws cloudformation delete-stack \
    --stack-name ECRDocker

waitForDeletion.py -s ECRDocker
beep
