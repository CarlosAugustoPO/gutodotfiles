#!/bin/sh
totalusedmem="$(free | grep Mem | awk '{print (($3+$5)/$2) * 100}' | cut -c 1-2)" 
echo $totalusedmem%
sleep 8
