#!/bin/bash

PATH=$PATH:/home/alberto/AWS/Git/AWS-Tooling/

aws cloudformation delete-stack \
    --stack-name NetworkAndSecurityStack
waitForDeletion.py -s NetworkAndSecurityStack
beep

