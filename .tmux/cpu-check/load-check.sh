#!/bin/bash

LOAD=$( uptime  | grep -o '[0-9]\+\.[0-9]\+*' | awk 'FNR==1' )

echo $LOAD

sleep 7
