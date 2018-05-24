#!/bin/bash

PATH=$PATH:/home/alberto/AWS/Git/AWS-Tooling/

aws ecr delete-repository \
    --repository-name docker-get-started \
    --force

aws cloudformation delete-stack \
    --stack-name ECRDocker

waitForDeletion.py -s ECRDocker
beep
