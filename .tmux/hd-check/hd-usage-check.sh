#!/bin/bash

df -h --total | ag total | awk '{print $3}'

