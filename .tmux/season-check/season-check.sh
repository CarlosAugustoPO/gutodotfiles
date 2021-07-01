#!/bin/bash

dia=$(date '+%d')
mes=$(date '+%m')

if [[ $mes == 01 ]]; then
  season="Verão"
elif [[ $mes == 02 ]]; then
  season="Verão"
elif [[ $mes == 03 ]] && [[ $dia -lt 20 ]]; then
  season="Verão"
elif [[ $mes == 03 ]] && [[ $dia -ge 20 ]]; then
  season="Outono"
elif [[ $mes == 04 ]]; then
  season="Outono"
elif [[ $mes == 05 ]]; then
  season="Outono"
elif [[ $mes == 06 ]] && [[ $dia -lt 21 ]]; then
  season="Outono"
elif [[ $mes == 06 ]] && [[ $dia -ge 21 ]]; then
  season="Inverno"
elif [[ $mes == 07 ]]; then
  season="Inverno"
elif [[ $mes == 08 ]]; then
  season="Inverno"
elif [[ $mes == 09 ]] && [[ $dia -lt 22 ]]; then
  season="Inverno"
elif [[ $mes == 09 ]] && [[ $dia -ge 22 ]]; then
  season="Primavera"
elif [[ $mes == 10 ]]; then
  season="Primavera"
elif [[ $mes == 11 ]]; then
  season="Primavera"
elif [[ $mes == 12 ]] && [[ $dia -lt 21 ]]; then
  season="Primavera"
elif [[ $mes == 12 ]] && [[ $dia -ge 21 ]]; then
  season="Verão"
else
  echo "Não foi possível localizar a estação"
fi

if [[ "$season" == "Verão" ]]; then
  echo "Verão"
elif [[ "$season" == "Outono" ]]; then
  echo "Outono"
elif [[ "$season" == "Inverno" ]]; then
  echo "🧥"
elif [[ "$season" == "Primavera" ]]; then
  echo "Primavera"
else
  echo "Não foi possível localizar a estação"
fi

# https://emojipedia.org/thermometer/ 🧥
#sleep 1967
#Outono: 20/03;
#Inverno: 21/06
#Primavera: 22/09
#Verão: 21/12
