" Highllight extra tabs and space  
hi ExtraEspaces ctermbg=9 ctermfg=16
autocmd BufWinEnter * 
  \ call matchadd('ExtraEspaces', '\s\+$\| \+\ze\t\|^\n\{2,}')



" Ex spaces on this file is for visual test
