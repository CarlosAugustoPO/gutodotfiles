#!/bin/bash

IP_EXTERNO=$(dig -4 TXT +short o-o.myaddr.l.google.com @ns1.google.com | cut -d '"' -f 2)


echo $IP_EXTERNO

sleep 62
