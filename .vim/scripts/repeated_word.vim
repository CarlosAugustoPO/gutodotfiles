hi RepeatedWord ctermbg=9 ctermfg=16
autocmd BufWinEnter *
  \ call matchadd('RepeatedWord', '\<\(\w*\) \1\>')

" Repeated word for test: Teste Teste
