#!/bin/bash

PATH=$PATH:/home/alberto/AWS/Git/AWS-Tooling/

aws cloudformation delete-stack \
    --stack-name ECSClusterStack

waitForDeletion.py -s ECSClusterStack
beep
