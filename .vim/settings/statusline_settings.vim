" Format the status line
set statusline=%1*\ [%n]%*                                                    " Number of buffer
set statusline+=%2*\%t%*                                                      " Name of file
set statusline+=%1*\%m%*                                                      " Modifier tag
set statusline+=%1*%{g:git_branch}%*                                          " Git branch
set statusline+=%1*%r%*                                                       " Read only tag
set statusline+=%1*\%<%*                                                      " Hidden when need itens after this
set statusline+=%1*%y%*                                                       " File type
set statusline+=%1*[%{&fileencoding?&fileencoding:&encoding}]%*               " Enconde type
set statusline+=%1*[%{getfperm(expand('%F'))}]%*                              " Permissions
set statusline+=%1*\ %<%*                                                     " Hidden when need itens before this
set statusline+=%1*%{expand('%:p:h')}%*                                       " Show parent dir
set statusline+=%1*\ %=\ %*                                                   " Left/Right separator
set statusline+=%1*\ l:%l/%L[%p%%]%*                                          " line number/total line numver and percentage
set statusline+=%1*\ c:%v/%*                                                  " Colum number
set statusline+=%1*\%{strwidth(getline('.'))}%*                               " Column total
set statusline+=%1*\ %*                                                       " Space to format
set statusline+=%1*\ %*                                                       " Final space
