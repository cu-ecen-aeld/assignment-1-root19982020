#!/bin/bash

# check the number of argument passed 
if [ $# -ne 2 ]; then
	echo "Error: Two arguments are required "
	exit 1
fi

writefile=$1
writestr=$2

#Create a directory 
mkdir -p "$(dirname "$writefile")"


#create and over write the file
echo "$writestr" > "$writefile"

# check if the file is well created 
if [ $? -ne 0 ]; then
	echo "Error: could not create file $writefile "
	exit 1
fi

#printing the result 
echo "File $writefile created successfully with content : $writestr "

