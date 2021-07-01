" Evoke a web browser with url from line
function! Browser ()
  let line0 = getline (".")
  let line = matchstr (line0, "http[^ ]*")
   :if line==""
    let line = matchstr (line0, "ftp[^ ]*")
  :endif
  :if line==""
    let line = matchstr (line0, "www[^ ]*")
  :endif
  :if line==""
    let line = matchstr (line0, "file[^ ]*")
  :endif
  let line = escape (line, "#?&;|%")
  exec ':silent !chromium-browser >/dev/null 2>&1 ' .
    \ "\"" . line . "\" &"
endfunction
