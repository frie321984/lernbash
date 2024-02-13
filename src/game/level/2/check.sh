#!/bin/bash

pwdnum=$(grep "pwd" ~/.lb/history.txt |wc -l)
if [ $pwdnum -ne 0 ]; then
   exit 0
fi
exit 1

