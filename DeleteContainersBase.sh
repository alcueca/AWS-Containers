#!/bin/bash

PATH=$PATH:/home/alberto/AWS/Git/AWS-Tooling/

aws cloudformation delete-stack \
    --stack-name ContainersBaseStack
waitForDeletion.py -s ContainersBaseStack
beep

