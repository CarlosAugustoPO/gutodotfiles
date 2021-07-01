#!/bin/bash

moon_today=$( curl -s https://www.calendarr.com/brasil/lua-hoje/ | ag '<img src="https://s.calendarr.com/layout/frontoffice/img/luas/100/lua_*...' | ag -o "lua_.*" |cut -f1 -d. | cut -c 5-7 )

if [[ $moon_today == 00 ]]; then moon_today="🌕"
elif [[ $moon_today == 01 ]]; then moon_today="🌕"
elif [[ $moon_today == 02 ]]; then moon_today="🌕"
elif [[ $moon_today == 03 ]]; then moon_today="🌕"
elif [[ $moon_today == 04 ]]; then moon_today="🌕"
elif [[ $moon_today == 05 ]]; then moon_today="🌕"
elif [[ $moon_today == 06 ]]; then moon_today="🌕"
elif [[ $moon_today == 07 ]]; then moon_today="🌗"
elif [[ $moon_today == 08 ]]; then moon_today="🌗"
elif [[ $moon_today == 09 ]]; then moon_today="🌘"
elif [[ $moon_today == 10 ]]; then moon_today="🌘"
elif [[ $moon_today == 11 ]]; then moon_today="🌘"
elif [[ $moon_today == 12 ]]; then moon_today="🌘"
elif [[ $moon_today == 13 ]]; then moon_today="🌘"
elif [[ $moon_today == 14 ]]; then moon_today="🌑"
elif [[ $moon_today == -00 ]]; then moon_today="🌕"
elif [[ $moon_today == -01 ]]; then moon_today="🌑"
elif [[ $moon_today == -02 ]]; then moon_today="🌑"
elif [[ $moon_today == -03 ]]; then moon_today="🌑"
elif [[ $moon_today == -04 ]]; then moon_today="🌔"
elif [[ $moon_today == -05 ]]; then moon_today="🌑"
elif [[ $moon_today == -06 ]]; then moon_today="🌑"
elif [[ $moon_today == -07 ]]; then moon_today="🌓"
elif [[ $moon_today == -08 ]]; then moon_today="🌓"
elif [[ $moon_today == -09 ]]; then moon_today="🌓"
elif [[ $moon_today == -10 ]]; then moon_today="🌒"
elif [[ $moon_today == -11 ]]; then moon_today="🌒"
elif [[ $moon_today == -12 ]]; then moon_today="🌒"
elif [[ $moon_today == -13 ]]; then moon_today="🌒"
elif [[ $moon_today == -14 ]]; then moon_today="🌑"
else
 echo 'Falha em obter lua hoje'
fi

echo $moon_today
sleep 587

# 🌑
# 🌒
# 🌓
# 🌔
# 🌕
# 🌖
# 🌗
# 🌘
