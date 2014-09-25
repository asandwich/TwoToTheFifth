#!/usr/bin/python

import sys

if len(sys.argv) != 3 :
    print 'Wrong args. Usage: </path/to/.bash_history> <command_to_check>'
else :
    f = open(sys.argv[1])
    lines = f.readlines()
    count = 0
    print sys.argv[2]
    for line in lines:
        if line.rstrip() == sys.argv[2]:
            count = count + 1
    f.close()
    print 'You used "', sys.argv[2], '" ', count, ' times!!!'
    print 'Try closing and reopening all bash windows for updated stats.\nYou can also expand the number of records kept through the .bashrc file.'