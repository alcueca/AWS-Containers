#!/bin/bash

PATH=$PATH:/home/alberto/AWS/Git/AWS-Tooling/

aws cloudformation create-stack \
    --stack-name ContainerInstanceDocker \
    --template-body file://ContainerInstance.yaml \
    --region eu-west-1 \
    --profile alberto \
    --capabilities CAPABILITY_IAM \
    --parameters ParameterKey=KeyNameParam,ParameterValue=StudentKeyPair

waitForStatus.py -s ContainerInstanceDocker -r CREATE_COMPLETE
beep
