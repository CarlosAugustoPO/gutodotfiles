" Ag on CWD
if executable('ag')
  set grepprg=ag\ -i\ --hidden\ --nogroup\ --nocolor\ --vimgrep
  set grepformat^=%f:%l:%c:%m   " file:line:column:message
endif
function! MySearch()
  let grep_term = input("Search in CWD ".getcwd()." \n Term: ")
  if !empty(grep_term)
    execute 'silent grep' grep_term | copen
  else
    echo "Empty search term"
  endif
  redraw!
endfunction
