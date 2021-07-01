timer_now () {
  date +%s%N
}

timer_start () {
  timer_start=${timer_start:-$(timer_now)}
}

timer_stop () {
  local delta_us=$((($(timer_now) - $timer_start) / 1000))
  local us=$((delta_us % 1000))
  local ms=$(((delta_us / 1000) % 1000))
  local s=$(((delta_us / 1000000) % 60))
  local m=$(((delta_us / 60000000) % 60))
  local h=$((delta_us / 3600000000))
  # Goal: always show around 3 digits of accuracy
  if ((h > 0)); then timer_show=$color_fg_lightPurple${h}$color_fg_lightYellow""h$color_fg_lightPurple${m}$color_fg_lightYellow""m$color_fg_none
  elif ((m > 0)); then timer_show=$color_fg_lightPurple${m}$color_fg_lightYellow""m$color_fg_lightPurple${s}$color_fg_lightYellow""s$color_fg_none
  elif ((s >= 10)); then timer_show=$color_fg_lightPurple${s}.$((ms / 100))$color_fg_lightYellow""s$color_fg_none
  elif ((s > 0)); then timer_show=$color_fg_lightPurple${s}.$(printf %03d $ms)$color_fg_lightYellow""s$color_fg_none
  elif ((ms >= 100)); then timer_show=$color_fg_lightPurple${ms}$color_fg_lightYellow""ms$color_fg_none
  elif ((ms > 0)); then timer_show=$color_fg_lightPurple${ms}.$((us / 100))$color_fg_lightYellow""ms$color_fg_none
  else timer_show=${us}us
  fi
  unset timer_start
}

set_prompt () {
timer_stop
PS1="\[$(printf "%*s" $(($(tput cols)-26)) "" | sed "s/ /-/g")\]\
$color_fg_lightPurple$(date +%Y%m%d%H%M%S)$color_fg_none-($timer_show)--\
\n--[$color_fg_lightGreen\u$color_fg_none]\
[$color_fg_lightBlue\h$color_fg_none]\
[$color_fg_lightYellow\w$color_fg_none]\
[$color_fg_lightPurple$(ltodoleftn)$color_fg_none]\
\n---($color_fg_lightPurple\$(ls -A | wc -l)$color_fg_lightYellow files$color_fg_none)\
($color_fg_lightPurple$(du -sh 2>/dev/null | sort -n | tr -d "[:space:]")$color_fg_none)\
$color_fg_lightYellow$(__git_ps1 | cut -c 2-100)$color_fg_none\
\n----\$ "
}

trap 'timer_start' DEBUG
PROMPT_COMMAND='set_prompt'
