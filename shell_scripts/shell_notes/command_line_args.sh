#!/bin/bash
# Number of argument in command line
echo '$#=' $#
#Process no of current process
echo '$$=' $$
#Display the third arg on the command line, from the left to right 
echo '$3=' $3
#Display th name of the current shell or program 
echo '$0=' $0
#Display all the argument on the command line using * symbol
echo '$*=' $*
#Display all th arg on the command line using @ symbol
echo '$*=' $@
echo $single
echo $double

