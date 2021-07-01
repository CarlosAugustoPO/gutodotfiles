function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction

function! s:DiffWithSavedMin()
  exe ":w !diff % -"
endfunction

com! DiffSaved
  \ call s:DiffWithSaved()

com! DiffNow
  \ call s:DiffWithSavedMin()
