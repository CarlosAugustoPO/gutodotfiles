" My General settings

let mapleader="\<space>"
set spell " Enable to autocorrect words
set spelllang=pt-BR,en " Select spell language
set spellfile+=$HOME/.vim/spell/mywords.utf-8.add " zg to add word
set spellfile+=$HOME/.vim/spell/ignore.utf-8.add " 2zg to add word
set shortmess+=I " Remove vim default welcome panel"
set omnifunc=syntaxcomplete#Complete " Enable completion tags for html with C-x C-o in insert mode
set dictionary+=$HOME/.vim/dictionary/autocomplete.vim " Set dictionary location"
set complete=.,w,k,kspell " List of source for <C-c>
set wildmode=list:longest,full " Show all items on screen"
set report=0 " Show events that occurred in more than 0 lines"
set infercase " Make autocompletion case insensitive"
set hid " Able to change buffer without save
set ignorecase " Ignore case when searching
set smartcase " When searching with Upper Case try to be smart about cases
set hlsearch " Highlight search results
set incsearch " Makes search act like search in modern browsers
set showmatch " Show matching brackets when text indicator is over them
set pastetoggle=<F7> " toggle paste mode on
set background=dark " Set theme background to dark
set laststatus=2 " Always show the status line
set cmdheight=2 " Set numbers of line above status line
set cursorline " Highlight cursor line underneath the cursor horizontally.
set cursorcolumn " Highlight cursor line underneath the cursor vertically.
set showcmd " Show partial command you type
set wildmenu " Enable auto completion menu after pressing TAB.
set notimeout " disable timeout between send keys
set backup " save backups from file
set backupdir=$HOME/.cache/vim,/tmp " List of folder to try save backups
set dir=$HOME/.cache/vim,/tmp " List of folder to try save swap files
set mouse=a " Set on mouse support
set history=1000 " remember more commands and search history
set undolevels=1000 " use many levels of undo
set linebreak " Avoid to break a word during wrap
set scrolloff=99 " Number de lines above cursor when scroll
set nomodeline " Disable modeline from files for security
set path+=** " Use find to search in work directory
set autoindent " Copy tab formation from previous line
set tabstop=2  " Number of spaces in a tab
set shiftwidth=2 " Round when tab
set expandtab " Expand spaces to tab
set smarttab " Be smart when using tabs ;)
set nowrap " Set no wrap
set number relativenumber " Set number and relative number
set confirm " Prompt before exit without save
set title " Put name of file on terminal app bar (doesn't work with tmux)
set undodir=$HOME/.cache/vim,/tmp " List of folder to try save backups
set undofile " This allows you to undo changes to a file even after saving it.
set undoreload=10000 " Undo buffer saves on memory
set matchpairs+=<:> " make < > visible to % find
set wildignore+=*.docx,*.jpg,*.png,*.gif " wild menu will ignore files with these extensions.
set wildignore+=*.pdf,*.pyc,*.exe,*.flv " wild menu will ignore files with these extensions.
set wildignore+=*.img,*.xlsx " wild menu will ignore files with these extensions.
"set noshowmode
"set textwidth=78
