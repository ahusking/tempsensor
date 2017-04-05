#!/bin/bash
Temp=$(pcsensor -c | awk '{print $4}' | cut -c 1-5 )
#echo ${Temp}


echo "beertemp:${Temp}" | nc -w 1 -u home.husking.id.au 8125
