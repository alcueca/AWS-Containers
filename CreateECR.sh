#!/bin/bash

PATH=$PATH:/home/alberto/AWS/Git/AWS-Tooling/

aws cloudformation create-stack --profile alberto --stack-name ECRStack \
        --template-body file://ECR.yaml \
        --region eu-west-1

waitForStatus.py -s ECSClusterStack -r CREATE_COMPLETE
beep
