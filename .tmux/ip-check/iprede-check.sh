#!/bin/bash

IP_REDE="$(ifconfig wlp1s0 | awk 'FNR==2 { print $2 }')"

echo $IP_REDE

sleep 61
