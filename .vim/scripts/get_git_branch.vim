" Get git Branch
augroup gitbranch
  au!
  autocmd BufEnter,FocusGained,BufWritePost *
    \ let g:git_branch = strlen(system("git -C "
    \ .expand('%:p:h').
    \ " rev-parse --abbrev-ref HEAD 2>/dev/null |
    \ tr -d '\n'")) > 0?
      \ '['.system("git -C ".expand('%:p:h').
      \ " rev-parse --abbrev-ref HEAD 2>/dev/null |
      \ tr -d '\n'").']':''
augroup end
