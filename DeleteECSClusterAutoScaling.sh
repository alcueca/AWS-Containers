#!/bin/bash

PATH=$PATH:/home/alberto/AWS/Git/AWS-Tooling/

aws cloudformation delete-stack \
    --stack-name ECSClusterAutoScalingStack

waitForDeletion.py -s ECSClusterAutoScaling
beep
