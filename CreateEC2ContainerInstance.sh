#!/bin/bash

PATH=$PATH:/home/alberto/AWS/Git/AWS-Tooling/

aws cloudformation create-stack \
--stack-name EC2ContainerInstanceStack \
--template-body file://EC2ContainerInstance.yaml \
--region eu-west-1 \
--profile alberto \
--parameters \
    ParameterKey=KeyNameParam,ParameterValue=StudentKeyPair \
    ParameterKey=InstanceTypeParam,ParameterValue=t2.micro \

waitForStatus.py -s EC2ContainerInstanceStack -r CREATE_COMPLETE
beep
