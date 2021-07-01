" Search word under cursor on google
function! Google_search_word ()
  let word = expand('<cword>')
  exec ":silent !chromium-browser >/dev/null 2>&1
    \ https://www.google.com/search?q=".word. "&"
endfunction

" Search string selected on visual on google
function! Google_search_string () range
  let string = escape(@", "#\n")
  let string_cor = substitute(string, "'", "\"", "g")
  exec ":silent !chromium-browser >/dev/null 2>&1
    \ https://www.google.com/search?q='".string_cor. "' &"
endfunction
