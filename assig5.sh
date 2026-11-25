#!/bin/bash

if [ $# -ne 1 ];
then
   echo"$0"
   exit 1
fi 

cal $1

