#!/bin/bash

dir=$1

if [[ -n "$dir" ]]; then
  echo "$(stat -c %a $1)" 
else
  echo "argument error"
fi
