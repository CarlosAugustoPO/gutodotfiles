#!/bin/bash

IP_LOCAL=$(ifconfig lo | awk 'FNR==2 { print $2 }')


echo $IP_LOCAL
