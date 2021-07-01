#!/bin/bash

df -h --total | ag total | awk '{print $2}'

sleep 1111
