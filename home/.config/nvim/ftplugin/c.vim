setlocal cindent

function SaveAndMake!()
    write
    exec '!silent test -f ./CMakeLists.txt'
    if !v:shell_error
        execute cmake .
    endif
    exec '!silent test -f ./Makefile'
    if !v:shell_error
        execute 'make debug'
    endif
endfunc

command! W call SaveAndMake()
nnoremap <M-m> :W<CR>

call matchadd('ColorColumn', '\%81v', 75)
