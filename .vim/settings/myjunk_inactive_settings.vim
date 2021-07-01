" Reduce screen glith when use system function os statusline
" set term=xterm-256color
" let &ro = &ro
" set lazyredraw
" set noerrorbells

" Ever open in a table
" au BufNewFile,BufRead * nested
"   \ if &buftype != "help" |
"   \   tab sball |
"   \ endif

" Display cursorline and cursorcolumn ONLY in active window.(Just work whith splits)
"augroup cursor_off
"    autocmd!
"    autocmd WinLeave * set nocursorline nocursorcolumn
"    autocmd WinEnter * set cursorline cursorcolumn
"augroup END

