#/!bin/bash

curl https://www.climatempo.com.br/previsao-do-tempo/agora/cidade/540/santos-sp | ag -i '"tmomento" content=".*' | ag -o "t=\".*.*\"" | cut -c 3-100 | sed -e 's|["'\''-]| |g' | cut -c 2-3
sleep 720
