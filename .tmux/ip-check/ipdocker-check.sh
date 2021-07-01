#!/bin/bash

IP_DOCKER=$(ifconfig docker0 | awk 'FNR==2 { print $2 }')


echo $IP_DOCKER


sleep 65
