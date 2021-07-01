nnoremap <F3>
  \ i<C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR><Esc>

nnoremap <F5> :silent update<Bar>
  \ silent !chromium-browser >/dev/null
  \ 2>&1 %:p &<CR><C-l><esc><C-l>

nnoremap <F7>
  \ :set invpaste paste?<CR>

nnoremap <Leader>ds <esc>mz:%s/\s\+$//e<CR>
  \<esc>:%s/\(^\n\{2,}\)/\r/e<CR><esc>:%s/^\s\+$//e<CR>
  \<esc>:%s/^\n$//e<CR>`z<CR><esc>/^\n$<CR>dd`z

nnoremap <leader>;
  \ A;<esc>

nnoremap <leader>rv :source /home/carlos/.vimrc
  \ <CR> :echo "Vimrc recarregado!!"<CR>

nnoremap <Leader>mm
  \ ~h

nnoremap <Leader>yp
  \ :call system('xclip -sel clip', expand("%:p"))<CR><C-l><bar>
  \ :echo expand("%:p") " \n Successfully copied to clipboard"
  \ <CR>

nnoremap <silent> <leader>cc
  \ :let @/=""<CR>

nnoremap <silent> <leader>ff
  \ mz*N`z:%s///gn<CR>

nnoremap <leader>sh
  \ i#!/bin/bash<esc>

nnoremap <Tab>
  \ /<\#\$\#><CR>

nnoremap <C-k>
  \ ddkP

nnoremap <C-j>
  \ ddp

nnoremap <C-b>
  \ <nop>

nnoremap <C-o>
  \ :NERDTreeToggle<CR>

nnoremap <C-s>
  \ :w<CR>

nnoremap <C-d>
  \ viw<Esc>`><Right>gvxpgv<Right>o<Right>o

nnoremap <C-a>
  \ viw<Esc>`<<Left>i_<Esc>mz"_xgvx`zPgv<Left>o<Left>o

nnoremap =
  \ <esc>:vertical resize +2<CR>

nnoremap -
  \ <esc>:vertical resize -2<CR>

nnoremap +
  \ <esc>:resize +2<CR>

nnoremap _
  \ <esc>:resize -2<CR>

nnoremap #
  \ #zz

nnoremap *
  \ *zz

nnoremap gV
  \ `[v`]<backspace>

nnoremap Y
  \ y$

nnoremap N
  \ Nzz

nnoremap n
  \ nzz

nnoremap O
  \ O<esc>x

nnoremap o
  \ o<esc>x

nnoremap q
  \ :quit<CR>

nnoremap j
  \ gj

nnoremap k
  \ gk

nnoremap gf
  \ <C-w>gF

nnoremap gF
  \ <C-w>gF

nnoremap <Leader>rr
  \ viw "hy:%s/<C-r>h<BS>//gc<left><left><left>

nnoremap <leader>ggo
  \ :call Browser()<CR><C-l>

nnoremap <leader>www
  \ :call Google_search_word()<CR><C-l>

nnoremap <Leader>lm
  \ :call system('xclip -sel clip', FileTime()) <bar>
  \ :echo "Successfully copied in system clipboard"<cr>

nnoremap <leader>hphp
  \ :call Help_php_under_cursor()<CR><C-l>

nnoremap <leader>br
  \ :call Translate_word_under_cursor()<CR><C-l>

nnoremap <Leader>ig
  \ :call ToggleIndentGuides()<cr>

" Visual maps
vmap <Leader>a
  \ <Esc>:call VisualHTMLTagWrap()<CR>

vnoremap <leader>br
  \ y:call Translate_string()<CR><C-l>

vnoremap <leader>hphp
  \ y:call Help_php_string()<CR><C-l>

vnoremap <leader>www
  \ y:call Google_search_string()<CR><C-l>

vnoremap <Leader>mm
  \ ~h

vnoremap <C-s>
  \ <esc>:w<CR>

vnoremap <Enter>
  \ "yy <Bar> :call system('xclip -sel clip', @y)<CR><C-l><bar>
  \ :echo "Copy done!"<CR>

vnoremap +
  \ <esc>:resize +2<CR>

vnoremap -
  \ <esc>:resize -2<CR>

vnoremap //
  \ y/\V<C-R>=escape(@",'/\')<CR><CR>

vnoremap >
  \ >gv

vnoremap <
  \ <gv

vnoremap <C-a>
  \ <Esc>`<<Left>i_<Esc>mz"_xgvx`zPgv<Left>o<Left>o

vnoremap <C-d>
  \ <Esc>`><Right>gvxpgv<Right>o<Right>o

vnoremap <Leader>rr
  \ "hy:%s/<C-r>h//gc<left><left><left>

vnoremap _"
  \ :call Surround('"', '"')<CR>

vnoremap _(
  \ :call Surround('(', ')')<CR>

vnoremap _[
  \ :call Surround('[', ']')<CR>

vnoremap _{
  \ :call Surround('{', '}')<CR>

vnoremap _<
  \ :call Surround('<', '>')<CR>

""""""""""""""""""""""""""""""""
" Insert mode maps
""""""""""""""""""""""""""""""""
inoremap <F3>
  \ <C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>

inoremap <C-s>
  \ <esc>:w<CR>

inoremap ><tab>
  \ ></<esc>F<;lvf>hyf/pa><esc>F<i

inoremap ()
  \ ()<LEFT>

inoremap []
  \ []<LEFT>

inoremap {}
  \ {}<LEFT>

inoremap <>
  \ <><LEFT>

inoremap ""
  \ ""<LEFT>

inoremap ''
  \ ''<LEFT>

inoremap jj
  \ <Esc>

""""""""""""""""""""""
"  Command mode maps
""""""""""""""""""""""
com! SW
  \ execute 'w !sudo tee % > /dev/null' <bar> edit!

com! Ag
  \ call MySearch()

" More Maps on
" zg to add word to my words list
" 2zg to add word to ignore list
" Bclose on $HOME/.vim/scripts/Bclose.vim
" DiffNow on $HOME/.vim/scripts/diff_save.vim
" DiffSaved on $HOME/.vim/scripts/diff_save.vim
" Html snippets  on $HOME/.vim/snippets/snippets_html.vim
