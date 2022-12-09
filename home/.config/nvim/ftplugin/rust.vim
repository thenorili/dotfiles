function SaveAndMake()
   write
   execute '!cargo check'
endfunc

command! W call SaveAndMake!()
nnoremap <M-m> :W<CR>

call matchadd('ColorColumn', '\%101v', 75)
