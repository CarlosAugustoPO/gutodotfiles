" Search word under cursor on google
function! Help_php_under_cursor ()
  let word = expand('<cword>')
  exec ":silent !chromium-browser >/dev/null 2>&1
    \ https://php.net/".word. " &"
endfunction

" Search string selected on visual on google
function! Help_php_string () range
  let string = escape(@", "#\n")
  let string = substitute(string, "'", "", "g")
  let string = substitute(string, "\"", "", "g")
  let string = substitute(string, '_', '-', 'g')
  let string = substitute(string, "^ ", "", "g")
  let string = substitute(string, " ", "-", "g")
  exec ":silent !chromium-browser >/dev/null 2>&1
    \ https://php.net/".string. " &"
endfunction
