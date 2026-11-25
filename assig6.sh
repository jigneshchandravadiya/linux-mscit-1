#!/bin/bash

date


    echo "date is ...............: $(date '+%d-%m-%y')"
    echo "date is ...............: $(date '+%m-%d-%y')"
    echo "time is ...............: $(date '+%H-%M-%S')"
    echo "time is ...............: $(date '+%H-%M:%S')"
    echo "no.of days elapsed in this year is : $(date '+%j')"
    echo "serial no. of day(of week) is .....: $(date '+%W')"
    echo "day and date is ........ :$(date '+%a +%h %d,%Y')."
    echo "time in the from AM/PM ...... $(date '+%H:%M:%S %p')"
    
    
hour="$(date '+%H')"

if [ $hour -gt 7 ] && [ $hour -lt 12 ]
then
     echo "Good Morning"
elif [ $hour -gt 13 ] && [ $hour -lt 19 ]
then
     echo "Good Afternoon"
else
     echo "Good Night"
fi
   
