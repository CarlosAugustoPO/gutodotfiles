" Html Skeleton and Header
au BufNewFile *.html 0r ~/.vim/skels/skeleton.html
au bufnewfile *.html so ~/.vim/skels/html_header.txt
au bufnewfile *.html exe "1," . 10 . "g/File Name:.*/s//File Name: " .expand("%")
au bufnewfile *.html exe "1," . 10 . "g/Creation Date:.*/s//Creation Date: " .strftime("%d-%m-%Y %H:%M:%S")
au Bufwritepre,filewritepre *.html execute "normal ma"
au Bufwritepre,filewritepre *.html exe "1," . 10 . "g/Last Modified:.*/s/Last Modified:.*/Last Modified: " .strftime("%d-%m-%Y %H:%M:%S")
au bufwritepost,filewritepost *.html execute "normal `a"
