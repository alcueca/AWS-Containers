#!/bin/bash

PATH=$PATH:/home/alberto/AWS/Git/AWS-Tooling/

aws cloudformation delete-stack \
    --stack-name ECSClusterDocker

waitForDeletion.py -s ECSClusterDocker
beep
