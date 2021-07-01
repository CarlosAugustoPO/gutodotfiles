function! ToggleIndentGuides()
  if exists('b:indent_guides')
    call matchdelete(b:indent_guides)
    unlet b:indent_guides
  else
    let pos = range(1, &l:textwidth, &l:shiftwidth)
    call map(pos, '"\\%" . v:val . "v"')
    let pat = '\%(\_^\s*\)\@<=\%(' . join(pos, '\|') . '\)\s'
    let b:indent_guides = matchadd('CursorLine', pat)
  endif
endfunction
