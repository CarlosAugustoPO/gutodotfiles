fun! FileTime()
  let ext=tolower(expand("%:e"))
  let fname=tolower(expand('%<'))
  let filename=fname . '.' . ext
  let msg=""
  let msg=msg." ".strftime("(Last Saved at %Y/%m/%d %H:%M:%S)",
    \ getftime(filename))
  echo msg
  return msg
endf
