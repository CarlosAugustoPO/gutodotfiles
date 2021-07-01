#!/bin/bash

MY_UPTIME="$(awk '{print int($1/3600)":"int(($1%3600)/60)}' /proc/uptime)"

echo $MY_UPTIME

sleep 60
