#!/bin/bash

# check the number of argument passed 
if [ $# -ne 2 ]; then
	echo "Error: Two arguments are required "
	exit 1
fi

filesdir=$1
serachstr=$2

#check if the first argument is a path 
if [ ! -d "$filesdir" ] ; then 
	echo "Error:directory $filesdir does not exist"
	exit 1
fi

#find number of file in directory and its subdirectories 
numb_files=$(find "$filesdir" -type f | wc -l)

# find the number of matching 
numb_matching=$(grep -r "$serachstr" "$filesdir" | wc -l)

#printing the result 
echo "The number of files are $numb_files and the number of matching lines are $numb_matching "

