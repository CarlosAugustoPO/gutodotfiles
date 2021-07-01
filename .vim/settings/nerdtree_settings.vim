let NERDTreeWinSize = 20
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.git$',
  \ '\.jpg$',
  \ '\.mp4$',
  \ '\.ogg$',
  \ '\.iso$',
  \ '\.pdf$',
  \ '\.pyc$',
  \ '\.odt$',
  \ '\.png$',
  \ '\.gif$',
  \ '\.db$']

" Exit Vim if NERDTree is the only left window.
autocmd BufEnter *
    \ if tabpagenr('$') == 1
    \ && winnr('$') == 1
    \ && exists('b:NERDTree')
    \ && b:NERDTree.isTabTree() |
    \ quit | endif
