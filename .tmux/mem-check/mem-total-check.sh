#!/bin/sh
free -h | awk 'FNR==2{print $2}' 
sleep 720
