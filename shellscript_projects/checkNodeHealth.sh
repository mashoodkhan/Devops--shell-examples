#!/bin/bash
#####################
#Author : Mashood Khan
#Date   : 30-11-2023
#Desc   : This Script will output the Node Health of Linux Machines
set -x # Debug Mode - Shows the command before the output
set -e # exit the script in case of failure
set -o pipefail #exit the script in case of failure after pipe

df -H # Prints the Disk Space 

free -g #prints the Memory Available

nproc # Prints the number of CPU available on machine

ps -ef | grep "chrome"| awk -F" " '{print $1}' #Prints the processes of chrome
                                               #outputs the username (column1)



