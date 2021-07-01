#!/bin/bash

CPU_TEMP=$(sensors | grep -o '  +[[:digit:]]*' | sort -rk1 | cut -c 4-6 | awk 'FNR==1')

echo $CPU_TEMP


sleep 6 
