alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Some more ls aliases
alias llast='ls -A -t -1 | head'
alias lhoje='ls -al --time-style=+%D | grep `date +%D`'
alias less='less -MR'
alias ls='ls -t --color=always --group-directories-first'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Force interactive mode
alias mv='mv -vi'
alias cp='cp -vi'
alias rm='rm -vi'
alias ln='ln -vi'
alias mkdir='mkdir -pv'

# Alias to show weather
alias clima='curl wttr.in/santos'

# Alias to set time by google
alias timesync="sudo date -s \"\$(curl -s --head http://google.com | grep ^Date: | sed 's/Date: //g')\""

alias rmswp="rm $HOME/.cache/vim/.*swp; rm $HOME/.cache/vim/*swp"

# Alias to spy a process
# COMMAND [service]
# TYPE [IPv4|IPv6]
# NODE [TCP|UDP]
# NAME [localhost|xxx.xx.xxx]
# STATUS [Listen|Established|Close_wait]
# PORT [:portnumber]
# MORE [user|pid|]
alias spy='sudo lsof -i -P +c 0 +M | ag -i "$@"'

# Alias to show month calendar
alias jan='cal -m 01'
alias fev='cal -m 02'
alias mar='cal -m 03'
alias abr='cal -m 04'
alias mai='cal -m 05'
alias jun='cal -m 06'
alias jul='cal -m 07'
alias ago='cal -m 08'
alias sep='cal -m 09'
alias out='cal -m 10'
alias nov='cal -m 11'
alias dez='cal -m 12'

# Alias to exit like vim
alias :q='exit'

# Alias to clear with c
alias c='clear'

# Clean system alias
alias cleanup="sudo find . -type f -name '*.DS_Store' -ls -delete"
alias cleantrash="sudo rm -rf $HOME/.local/share/Trash/files/*; sudo rm -rf $HOME/.local/share/Trash/info/* "
alias cleanapt="sudo apt-get clean -y; sudo apt-get autoremove -y; sudo apt-get autoclean -y"
alias cleancache="rm -rf .thumbnails/* .cache/*"

# Alias fpr ip check
alias ipdocker="ifconfig docker0 | awk 'FNR==2 { print \$ 2}'"
alias iprede="ifconfig wlp1s0 | awk 'FNR==2 { print \$2 }'"
alias ipexterno='dig -4 TXT +short o-o.myaddr.l.google.com @ns1.google.com | cut -d "\"" -f 2'
alias iplocal="ifconfig lo | awk 'FNR==2 { print \$ 2}'"

# Alias for high temp check
alias tempcpuh="sensors | grep -o '  +[[:digit:]]*' | sort -rk1 | cut -c 4-6 | awk 'FNR==1'"

# Process that eat memory
alias psmem="ps aux | sort -nr -k 4 | awk '{ print \$11, \"(\"\$4\"%)\", \"[\"\$1\"]\", \"DD\"\$2}' | sed 's@.*/@@' | sed 's@DD@ @g'"
alias psmem10="ps aux | sort -nr -k 4 | head | awk '{ print \$11, \"(\"\$4\"%)\", \"[\"\$1\"]\", \"DD\"\$2}' | sed 's@.*/@@' | sed 's@DD@ @g'"

# Process that eat cpu
alias pscpu="ps aux | sort -nr -k 3 | awk '{ print \$11, \"(\"\$3\"%)\", \"[\"\$1\"]\", \"DD\"\$2}' | sed 's@.*/@@' | sed 's@DD@ @g'"
alias pscpu10="ps aux | sort -nr -k 3 | head | awk '{ print \$11, \"(\"\$3\"%)\", \"[\"\$1\"]\", \"DD\"\$2}' | sed 's@.*/@@' | sed 's@DD@ @g'"

# Folder that eat more space
alias usage='du -hd1sx 2>/dev/null | sort -rh'

# Network manager alias
alias speedometer='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -'
alias nload='nload wlp1s0'

# Find all services
alias allservices='cat /etc/services'

# Find all users
alias allusers='cat /etc/passwd | cut -d: -f1'

# Find users that can login
alias freeusers='sudo cat /etc/shadow | ag ".*:\\$" | cut -f1 -d: '

# Find users that can't login
alias blockedusers='sudo cat /etc/shadow | ag -o ".*(:[\\#\\!])" | cut -f1 -d:'

# Find ao groups (use groups for users groups)
alias allgroups='cat /etc/group | cut -d: -f1'

alias wifind="sudo ag -o '(^psk=) ?[a-zA-Z0-9!@#$%^&*()_+=?.,-]+' /etc/NetworkManager/ | awk '{ print $1 }' | cut -c 40-100 | sed 's/:.*:psk=/:/' > /tmp/.relatwifi; cat /tmp/.relatwifi"

alias github='chromium-browser >/dev/null 2>&1 https://github.com/CarlosAugustoPO?tab=repositories &'

# Remove files from list of modified for git ignore
alias rmmod='git update-index --assume-unchanged' #usage rmtrack file

# Edit in vim
alias ebashrc="vim $HOME/.bashrc"
alias etarefas="vim $HOME/Projects/myRoutine/tarefas"
alias etmux="vim $HOME/.tmux.conf"
alias evimrc="vim $HOME/.vimrc"
alias etodo="vim $HOME/Documents/notes/TODO.md"
alias ag='ag --ignore={'*mylogs*','*tmuxlog*'}'

# Alias for todo
alias todo="cat $HOME/Documents/notes/TODO.md"
alias todoleft="todo | ag  \"\[]\" --nocolor "
alias todoleftn="todo | wc -l "
alias todonow="todoleft | awk 'FNR==1'"

alias ltodoleft="ltodo | ag \"\[]\" --nocolor "
alias ltodoleftn="ltodoleft | wc -l"
alias ltodonow="ltodoleft | awk 'FNR==1'"

# Find empty recursively
alias findempty="find . -type f -empty"

# Find duplicated files with same size (ignore ".git")
alias finddups="find . ! -empty -type f -exec md5sum {} + | sort | uniq -w32 -dD | ag -v '.git'"

alias findmail="ag -o '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b' . 2>/dev/null 1>/tmp/.relatmail; cat /tmp/.relatmail | cut -f3 -d\: | sort -u > /tmp/.relatmailclean; cat /tmp/.relatmailclean"

# Find plain password
alias findpwd="\
ag -a -o -i --silent --stats '\
((.*[_-])?(\
[Pp]ass(word)?|\
[Pp][Aa][Ss][Ss]|\
[Pp][Aa][Ss][Ss][Ww][Oo][Rr][Dd]([Ss])?|\
[Ss][Ee][Cc][Rr][Ee][Tt]([Ss])?|\
[Pp][Aa][Ss][Ss][Ww][Dd]([Ss])?|\
[Pp][Ss][Ww][Rr][Dd]([Ss])?|\
[Pp][-_/][Ww][Oo][Rr][Dd]([Ss])?|\
[Pp][Ww]|\
[Pp][-_/][Ww]|\
[Pp][Ww][Kk]|\
[Pp][Ww][Dd]|\
[Ss][Ee][Nn][Hh][Aa]([Ss])?\
)([_-].*)?) \
?[=:]{1,2} ?[a-zA-Z0-9!@#$%^&*()_+=?.,-]+\
' > /tmp/.relatpwd;\
cat /tmp/.relatpwd"

alias findallpwd="\
ag -a -o -i --silent --stats --hidden '\
((.*[_-])?(\
[Pp]ass(word)?|\
[Pp][Aa][Ss][Ss]|\
[Pp][Aa][Ss][Ss][Ww][Oo][Rr][Dd]([Ss])?|\
[Ss][Ee][Cc][Rr][Ee][Tt]([Ss])?|\
[Pp][Aa][Ss][Ss][Ww][Dd]([Ss])?|\
[Pp][Ss][Ww][Rr][Dd]([Ss])?|\
[Pp][-_/][Ww][Oo][Rr][Dd]([Ss])?|\
[Pp][Ww]|\
[Pp][-_/][Ww]|\
[Pp][Ww][Kk]|\
[Pp][Ww][Dd]|\
[Ss][Ee][Nn][Hh][Aa]([Ss])?\
)([_-].*)?) \
?[=:]{1,2} ?[a-zA-Z0-9!@#$%^&*()_+=?.,-]+\
' > /tmp/.relatpwd;\
cat /tmp/.relatpwd"

alias findpub="find / 2>&1 | ag '/.*pub[^/] *$'"

# Add an "alert" alias for long running commands.  Use like so:
# sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias checklscolor='{
IFS=:
  for SET in $LS_COLORS
do
  TYPE=$(echo $SET | cut -d"=" -f1)
  COLOUR=$(echo $SET | cut -d"=" -f2)

  case $TYPE in
    no) TEXT="Global default";;
    fi) TEXT="Normal file";;
    di) TEXT="Directory";;
    ln) TEXT="Symbolic link";;
    pi) TEXT="Named pipe";;
    so) TEXT="Socket";;
    do) TEXT="Door";;
    bd) TEXT="Block device";;
    cd) TEXT="Character device";;
    or) TEXT="Orphaned symbolic link";;
    mi) TEXT="Missing file";;
    su) TEXT="Set UID";;
    sg) TEXT="Set GID";;
    tw) TEXT="Sticky other writable";;
    ow) TEXT="Other writable";;
    st) TEXT="Sticky";;
    ex) TEXT="Executable";;
    rs) TEXT="Reset to \"normal\" color";;
    mh) TEXT="Multi-Hardlink";;
    ca) TEXT="File with capability";;
    *) TEXT="${TYPE}";;
  esac

  printf "Type: %-10s Colour: %-10s \e[${COLOUR}m${TEXT}\e[0m\n" "${TYPE}" "${COLOUR}"
done
}'
