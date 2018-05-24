#!/bin/bash

PATH=$PATH:/home/alberto/AWS/Git/AWS-Tooling/

aws cloudformation create-stack \
    --profile alberto \
    --stack-name ECRDocker \
    --template-body file://ECR.yaml \
    --region eu-west-1

waitForStatus.py -s ECRDocker -r CREATE_COMPLETE
beep
