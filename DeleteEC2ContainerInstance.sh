#!/bin/bash

PATH=$PATH:/home/alberto/AWS/Git/AWS-Tooling/

aws cloudformation delete-stack \
    --stack-name EC2ContainerInstanceStack

waitForDeletion.py -s EC2ContainerInstanceStack
beep
