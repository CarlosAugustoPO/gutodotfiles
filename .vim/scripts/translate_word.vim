" Search word under cursor on google
function! Translate_word_under_cursor ()
  let word = expand('<cword>')
  exec ":silent !chromium-browser >/dev/null 2>&1
    \ 'https://translate.google.com.br/?sl=auto&tl=pt-Br&text=".word. "' &"
endfunction

" Search string selected on visual on google
function! Translate_string () range
  let string = escape(@", "#\n")
  let string = substitute(string, "'", "", "g")
  let string = substitute(string, "\"", "", "g")
  let string = substitute(string, '_', '+', 'g')
  let string = substitute(string, "^ ", "", "g")
  let string = substitute(string, " ", "+", "g")
  exec ":silent !chromium-browser >/dev/null 2>&1
    \ 'https://translate.google.com.br/?sl=auto&tl=pt-Br&text=".string. "' &"
endfunction
