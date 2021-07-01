#!/bin/bash

cmomento=$( curl https://www.climatempo.com.br/previsao-do-tempo/agora/cidade/540/santos-sp | ag -i '"cmomento" content=".*' | ag -o "t=\".*.*\"" | cut -c 3-100 | sed -e 's|["'\''-]| |g' | cut -c 2-100 )


if [[ "$cmomento" == "alguma nebulosidade " ]]; then cmomento="🌤 " 
else
  echo "$cmomento"
  echo 'Falha em obter emoji do clima agora'
fi

echo "$cmomento " 

sleep 587

# Emoji list
# 🌦🌥🌤🌣 (https://fsymbols.com/signs/sun/) 


