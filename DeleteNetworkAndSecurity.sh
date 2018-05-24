#!/bin/bash

PATH=$PATH:/home/alberto/AWS/Git/AWS-Tooling/

aws cloudformation delete-stack \
    --stack-name NetworkAndSecurityDocker
waitForDeletion.py -s NetworkAndSecurityDocker
beep

