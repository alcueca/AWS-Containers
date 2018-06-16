#!/bin/bash

PATH=$PATH:/home/alberto/AWS/Git/AWS-Tooling/

aws ecr delete-repository \
    --repository-name ecr-repository \
    --force

aws cloudformation delete-stack \
    --stack-name ECRDocker

waitForDeletion.py -s ECRStack
beep
