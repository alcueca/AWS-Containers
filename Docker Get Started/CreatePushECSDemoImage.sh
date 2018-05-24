#!/bin/bash

PATH=$PATH:/home/alberto/AWS/Git/AWS-Tooling/

aws cloudformation create-stack \
--stack-name PushECSDemoImageDocker \
--template-body file://PushECSDemoImage.yaml \
--region eu-west-1 \
--profile alberto \
--capabilities CAPABILITY_IAM \
--parameters \
    ParameterKey=KeyNameParam,ParameterValue=StudentKeyPair \
    ParameterKey=InstanceTypeParam,ParameterValue=t2.micro

waitForStatus.py -s PushECSDemoImageDocker -r CREATE_COMPLETE
beep
