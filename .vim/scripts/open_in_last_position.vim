" Return to last edit position when opening files (You want this!)
au BufReadPost *
  \ if line("'\"") > 1
  \ && line("'\"") <= line("$") |
    \ exe "normal! g'\"" |
  \ endif
