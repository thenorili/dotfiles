function SaveAndMake()
    write
    system('shellcheck', "%:p:h")
endfunc

command! W call SaveAndMake()
nnoremap <M-m> :W<CR>

