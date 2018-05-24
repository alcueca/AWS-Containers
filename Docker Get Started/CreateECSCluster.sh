#!/bin/bash

PATH=$PATH:/home/alberto/AWS/Git/AWS-Tooling/

aws cloudformation create-stack \
    --stack-name ECSClusterDocker \
    --template-body file://ECSCluster.yaml \
    --region eu-west-1 \
    --profile alberto \
    --capabilities CAPABILITY_IAM \
    --parameters ParameterKey=KeyNameParam,ParameterValue=StudentKeyPair

waitForStatus.py -s ECSClusterDocker -r CREATE_COMPLETE
beep
