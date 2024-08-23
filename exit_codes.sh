#!/bin/bash

#EXIT CODES , they tell us  whether a command was successful or unsuccessful.
#The exit code of zero means success , any other digit =unsuccessful.
#This script is fairly beginner level but it is useful when working with backup scipts

#prompting the user to enter the name of the package
echo "Enter the name of the package you are trying to open: "
read pack_name

#installing the package if it is not there already and redirecting the output to a .log file "
sudo apt install $pack_name >> package_name_ins.log

#Condition , if the exit code = 0 , the package was installed accordingly
if [ $? -eq 0 ]
then
   echo " The package will be opening , hang in there ....."
   $pack_name
else
   echo " The package $pack_name failed to install " >> package_name_failure_ins.log
fi

#$pack_name
