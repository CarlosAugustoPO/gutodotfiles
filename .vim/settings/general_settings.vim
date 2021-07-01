" My General settings

let mapleader="\<space>"
set spell                                                                    " Enable to autocorrect words
set spelllang=pt-BR,en
set shortmess+=I
set omnifunc=syntaxcomplete#Complete                                          " Enable completion tags for html whith C-x C-o in insert mode
set dictionary+=/home/carlos/.vim/dictionary/autocomplete.vim
set complete=.,w,k,kspell
set wildmode=list:longest,full
set report=0
" set textwidth=78
set infercase
set hid                                                                       " Able to change buffer without save
set ignorecase                                                                " Ignore case when searching
set smartcase                                                                 " When searching whith UpperCase try to be smart about cases
set hlsearch                                                                  " Highlight search results
set incsearch                                                                 " Makes search act like search in modern browsers
set showmatch                                                                 " Show matching brackets when text indicator is over them
set pastetoggle=<F7>                                                          " toggle paste mode on
set background=dark                                                           " Set theme background to dark
set laststatus=2                                                              " Always show the status line
set cmdheight=2                                                               " Set numbers of line above statusline
set cursorline                                                                " Highlight cursor line underneath the cursor horizontally.
set cursorcolumn                                                              " Highlight cursor line underneath the cursor vertically.
set showcmd                                                                   " Show partial command you type
set wildmenu                                                                  " Enable auto completion menu after pressing TAB.
set notimeout                                                                 " disable timeout between send keys
set backup                                                                    " save backupps from file
set backupdir=/home/$USER/.cache/vim,/tmp                                     " List of folder to try save backups
set dir=/home/$USER/.cache/vim,/tmp                                           " List of folder to try save swapfiles
set mouse=a                                                                   " Set on mouse suport
set history=1000                                                              " remember more commands and search history
set undolevels=1000                                                           " use many levels of undo
set linebreak                                                                 " Avoid to break a word durant wrap
set scrolloff=99                                                              " Number de lines above cursor when scroll
set nomodeline                                                                " Disable modeline from files for security
set path+=**                                                                  " Use find to search in workpatch
set autoindent                                                                " Copy tab formation from previous line
set tabstop=2                                                                 " Number of spaces in a tab
set shiftwidth=2                                                              " Round when tab
set expandtab                                                                 " Expand spaces to tab
set smarttab                                                                  " Be smart when using tabs ;)
set nowrap                                                                    " Set no wrap
set number relativenumber                                                     " Set number and relative number
set confirm                                                                   " Prompt before exit whitou save
set title                                                                     " Put name of file on terminal app bar (doesent work with tmux)
set undodir=/home/$USER/.cache/vim,/tmp                                       " List of folder to try save backups
set undofile                                                                  " This allows you to undo changes to a file even after saving it.
set undoreload=10000                                                          " Undo buffer saves on memory
set matchpairs+=<:>                                                           " make < > visible to % find
set wildignore+=*.docx,*.jpg,*.png,*.gif"                                     " wild menu will ignore files with these extensions.
set wildignore+=*.pdf,*.pyc,*.exe,*.flv                                       " wild menu will ignore files with these extensions.
set wildignore+=*.img,*.xlsx                                                  " wild menu will ignore files with these extensions.
"set noshowmode
