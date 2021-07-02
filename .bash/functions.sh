
xdgopen(){
 xdg-open 2>/dev/null $1 &
}

# Auto ls when change directory
cd(){
    builtin cd "$@";\
    echo "to -> $PWD";\
    echo "File list (below):";\
    ls --color=always -A
}

# Open temp file for write
rascunho(){
  vim /tmp/rascunho-"$1"
}

myccat(){
 echo -ne $(cat "$@" | sed  's/$/\\n/' | sed 's/ /\\a /g')
}

# Create folder with date
mkdt(){
 now=$(date +"%d%m%Y-%H%M%S");
 mkdir -p $now
}

mkbkp(){
 prot=$(date +%Y%m%d%H%M%S )
 itemToCopy="$1"
 folder="$1"
 file="$1"
 dir="/home/$USER/Documents/bkps/$folder"
 echo "Backing up $file to $dir/$file.$prot"
 date +%d/%m/%Y-%H:%M:%S
 echo
 mkdir $dir
 cp -rf  $itemToCopy $dir/$file.$prot.bkp
 touch $dir/$file.$prot.info
 echo $PWD > $dir/$file.$prot.info
 echo $( date +%d/%m/%Y-%H:%M:%S ) >> $dir/$file.$prot.info
 echo
 echo "Backup finished"
 date +%d/%m/%Y-%H:%M:%S
 ls -lh $dir/$file.$prot*
}

# Use ssh pid to get all stroked keys
# Usage: klogssh PID 
# Make sure that u have activated log when use this feature
klogssh(){
 sudo strace -e trace=read -p "$1" 2>&1 |  ag "^read.*= [1-9]$" | cut -f2 -d\"
}

explain(){
  if [ "$#" -eq 0 ]; then
    while read  -p "Command: " cmd; do
      curl -Gs "https://www.mankier.com/api/explain/?cols="$(tput cols) --data-urlencode "q=$cmd"
    done
    echo "Bye!"
  elif [ "$#" -eq 1 ]; then
    curl -Gs "https://www.mankier.com/api/explain/?cols="$(tput cols) --data-urlencode "q=$1"
  else
    echo "Usage"
    echo "explain                  interactive mode."
    echo "explain 'cmd -o | ...'   one quoted command to explain it."
  fi
}

pid(){
  echo "Processes for: \"$1\"";
  ps aux | grep -i "$1" | grep -v grep | awk '{print $2, $11, $12}'
}

google(){
 string="$@"
 chromium-browser >/dev/null 2>&1 https://www.google.com/search?q="$string" &
}

up(){
  local d=""
  limit=$1
  for ((i=1 ; i <= limit ; i++)); do
    d=$d/..
  done
  d=$(echo $d | sed 's/^\///')
  if [[ -z "$d" ]]; then
    d=..
  fi
  cd $d
}

mostused(){
 history | awk '{CMD[$4]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n10
}

eltodo(){
 find / -exec bash -c '[[ $PWD != "$1"* ]]' bash {} \; -prune -iname todo.md -print > /tmp/dirltodo
 dir=$( cat /tmp/dirltodo )
 if [[ $dir != '' ]]; then vim $dir; else echo 'Não há tarefas locais'; fi
}

# Alias for local todo
ltodo(){
  find / -exec bash -c '[[ $PWD != "$1"* ]]' bash {} \; -prune -iname todo.md -print > /tmp/dirltodo
  dir=$( cat /tmp/dirltodo )
  if [[ $dir != '' ]]; then cat $dir; else echo 'Não há tarefas locais'; fi
}

# Alias to find specific file local and recursively
findfilel(){
  file="*"
  file+="$@"
  file+="*"
  find . -iname $file 2>/dev/null
}

# Alias to find specific file global
findfile(){
  file="*"
  file+="$@"
  file+="*"
  find / -iname $file 2>/dev/null
}

# Alias to search local files with some extension
# Usage: "findextl swift"
# Results: prints all .swift files
findextl(){
  ext="*."
  ext+="$@"
  find . -iname $ext 2>/dev/null
}

# Alias to search all files with some extension
# Use: "findext swift"
# Results: prints all .swift files
findext(){
  ext="*."
  ext+="$@"
  find / -iname $ext 2>/dev/null
}
