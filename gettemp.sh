#!/bin/bash
Temp=$(pcsensor -c | awk '{print $4}' | cut -c 1-5 )
echo "home.iot.beertemp1 ${Temp} `date +%s`"
echo "home.iot.beertemp1 ${Temp} `date +%s`" | nc -w 1 192.168.1.112 2003
