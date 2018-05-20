#!/usr/bin/python

'''This script queries AWS for the existing stacks and waits until the one passed as an argument does not exist'''

import subprocess, json, time
import sys, getopt

def main(argv):
    stackName = ''

    try:
        opts, args = getopt.getopt(argv,"hs:",["stack-name="])
    except getopt.GetoptError:
        print 'waitForDeletion.py -s <stack name>'
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-h':
            print 'waitForDeletion.py -s <stack name>'
            sys.exit()
        elif opt in ("-s", "--stack-name"):
            stackName = arg

    if stackName == '':
        print 'waitForDeletion.py -s <stack name>'
        sys.exit(2)

    awsCommand = "aws cloudformation describe-stacks"

    while(True):
        process = subprocess.Popen(awsCommand.split(), stdout=subprocess.PIPE)
        output, error = process.communicate()
        stacks = json.loads(output)
        stackNames = [stack['StackName'] for stack in stacks['Stacks']]
        print(stackNames)        
        if stackName not in stackNames: 
            sys.exit(0)
        print('...')        
        time.sleep(10)

if __name__ == "__main__":
   main(sys.argv[1:])


