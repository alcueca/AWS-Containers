#!/bin/bash

PATH=$PATH:/home/alberto/AWS/Git/AWS-Tooling/

aws cloudformation delete-stack \
    --stack-name ECSDemoBuilderStack
waitForDeletion.py -s ECSDemoBuilderStack
beep

