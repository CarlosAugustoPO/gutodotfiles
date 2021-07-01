#!/bin/bash

cat ~/Documents/notes/TODO.md | ag  '\[]' | awk 'FNR==1' | cut -c 4-100
sleep 60
