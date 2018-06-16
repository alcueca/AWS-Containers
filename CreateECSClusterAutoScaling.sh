#!/bin/bash

PATH=$PATH:/home/alberto/AWS/Git/AWS-Tooling/

aws cloudformation create-stack \
        --stack-name ECSClusterAutoScalingStack \
        --template-body file://ECSClusterAutoScaling.yaml \
        --profile alberto \
        --region eu-west-1 \
        --parameters \
            ParameterKey=KeyNameParam,ParameterValue=StudentKeyPair
waitForStatus.py -s ECSClusterAutoScalingStack -r CREATE_COMPLETE
beep
