#!/bin/bash

PATH=$PATH:/home/alberto/AWS/Git/AWS-Tooling/

aws cloudformation create-stack \
--stack-name ClusterInstanceDocker \
--template-body file://ClusterInstance.yaml \
--region eu-west-1 \
--profile alberto \
--parameters \
    ParameterKey=KeyNameParam,ParameterValue=StudentKeyPair \
    ParameterKey=InstanceTypeParam,ParameterValue=t2.micro \

waitForStatus.py -s ClusterInstanceDocker -r CREATE_COMPLETE
beep
