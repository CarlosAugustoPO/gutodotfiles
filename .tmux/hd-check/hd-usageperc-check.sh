#!/bin/bash

df -h --total | ag total | awk '{print $5}'

sleep 33
