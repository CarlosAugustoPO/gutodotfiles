" Vim color file
" Maintainer:	Carlos Augusto <eu.carlos.aug@gmail.com>

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "my_colors"

hi CursorLine cterm=none ctermbg=236
hi CursorColumn cterm=none ctermbg=236

hi User1 ctermfg=249 ctermbg=236
hi User2 cterm=bold ctermfg=3 ctermbg=236

hi Normal ctermfg=254
hi CursorLineNr ctermfg=254 ctermbg=236
hi Operator ctermfg=254
hi Delimiter ctermfg=254

hi String ctermfg=228
hi Directory ctermfg=228

hi Boolean ctermfg=201
hi Number ctermfg=201
hi Statement ctermfg=201
hi Keyword ctermfg=201
hi Exception ctermfg=201

hi Function ctermfg=46

hi Identifier ctermfg=69

hi Type ctermfg=81

hi MatchParen ctermfg=54 ctermbg=228
hi IncSearch ctermfg=228 ctermbg=54

hi WildMenu ctermfg=228 ctermbg=54
hi QuickFixLine ctermfg=228 ctermbg=54
hi Search ctermfg=228 ctermbg=54
hi Visual ctermfg=228 ctermbg=54

hi Comment ctermfg=247

hi TabLine ctermbg=239 ctermfg=249
hi TabLineSel ctermbg=black ctermfg=3
hi TabLineFill ctermbg=236 ctermfg=236

hi MoreMsg ctermfg=red
hi Error ctermfg=red ctermbg=none
hi ErrorMsg ctermfg=red ctermbg=none
hi WarningMsg ctermfg=red ctermbg=none
hi Ignore ctermfg=red
hi Question ctermfg=red
hi SpellBad ctermfg=black ctermbg=red cterm=underline

hi StatusLine ctermfg=236 ctermbg=249
hi StatusLineNC ctermfg=236 ctermbg=249
hi LineNr ctermfg=249 ctermbg=233

hi VertSplit ctermfg=78 ctermbg=78
hi PreProc ctermfg=78
hi ModeMsg ctermfg=78

hi Special ctermfg=3
hi Character ctermfg=3
hi SpecialChar ctermfg=3

"  Doubt colors
hi Label ctermbg=228 ctermfg=54
hi Include ctermbg=228 ctermfg=54
hi Define ctermbg=228 ctermfg=54
hi Macro ctermbg=228 ctermfg=54
hi PreCondit ctermbg=228 ctermfg=54
hi Constant ctermbg=228 ctermfg=54
hi StorageClass ctermbg=228 ctermfg=54
hi Structure ctermbg=228 ctermfg=54
hi Typedef ctermbg=228 ctermfg=54
hi SpecialKey ctermbg=228 ctermfg=54
hi Tag ctermbg=228 ctermfg=54
hi SpecialComment ctermbg=228 ctermfg=54
hi Debug ctermbg=228 ctermfg=54
