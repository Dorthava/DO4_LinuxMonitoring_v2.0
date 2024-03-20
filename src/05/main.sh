#!/bin/bash

function check_errors() {
if [ $# -ne 1 ]; then
echo "Error! Argument contains incorrect number of parameters."
exit 1
fi 

if [[ $1 =~ ^[^1-4]$ ]]; then
echo "Error! Arguments 1 to 4."
exit 1
fi
}

function start_script() {
    check_errors $@
    if [ "$1" -eq "1" ]; then
    awk '{print ($9, $0)}' "../04/log_file_5.log"
    elif [ "$1" -eq "2" ]; then
    awk '{print ($1)}' "../04/log_file_5.log"
    elif [ "$1" -eq "3" ]; then
    awk '($9>=400 && $9 <= 503) {print}' "../04/log_file_5.log"
    elif [ "$1" -eq "4" ]; then
    awk '($9>=400 && $9 <= 503) {print($1)}' "../04/log_file_5.log"
    fi
}

start_script "$@"