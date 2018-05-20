#!/usr/bin/python

'''This script queries AWS for a specific status on the AWS::CloudFormation:Stack resource related to a stack passed as an argument, and waits until the status eventuates'''

import subprocess, json, time
import sys, getopt

def main(argv):
    stackName = ''
    resourceStatus = ''
    try:
        opts, args = getopt.getopt(argv,"hs:r:",["stack-name=","resource-status="])
    except getopt.GetoptError:
        print 'waitForStatus.py -s <stack name> -r <resource status>'
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-h':
            print 'waitForStatus.py -s <stack name> -r <resource status>'
            sys.exit()
        elif opt in ("-s", "--stack-name"):
            stackName = arg
        elif opt in ("-r", "--resource-status"):
            resourceStatus = arg
    if stackName == '' or resourceStatus == '':
        print 'waitForStatus.py -s <stack name> -r <resource status>'
        sys.exit(2)

    awsCommand = "aws cloudformation describe-stack-events --stack-name " + stackName
    printedStatus = []

    while(True):
        process = subprocess.Popen(awsCommand.split(), stdout=subprocess.PIPE)
        output, error = process.communicate()
        events = json.loads(output)
        for event in events['StackEvents']:
            if event['ResourceType'] == 'AWS::CloudFormation::Stack':
                if event['ResourceStatus'] not in printedStatus: 
                    print json.dumps(event, sort_keys=True, indent=4, separators=(',', ': '))
                    printedStatus.append(event['ResourceStatus'])
                if event['ResourceStatus'] == resourceStatus: sys.exit(0)
        print('\n...\n')        
        time.sleep(10)

if __name__ == "__main__":
   main(sys.argv[1:])


