#!/bin/bash
PERM_CHECK=$(ls -dl . | awk '{ print $1 }' )
echo $PERM_CHECK
