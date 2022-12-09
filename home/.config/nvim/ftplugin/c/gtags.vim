" nori's cscope settings -- based on Jeff's cscope settings, whoever Jeff is
function GtagsAdd()
   let found = 0
   let iter = 0
   set csto=1
   set cst
   set cscopetag
   while iter < 1
      "first try
      set csprg=gtags-cscope\ -C
      let g:gtagsdir = substitute(system("global -p -q"), '[[:cntrl:]]', '', 'g')
      echom g:gtagsdir
      if !v:shell_error && g:gtagsdir != ""
         echom "executing cs add ".g:gtagsdir."/GTAGS from global -p"
         execute "cs add ".g:gtagsdir."/GTAGS"
         let found = 1
         break
      endif
      "second try
      let g:gtagsdir = substitute(system("findup GTAGS"), '[[:cntrl:]]', '', 'g')
      if !v:shell_error
         echom "executing cs add ".g:gtagsdir."/GTAGS from findup"
         execute "cs add ".g:gtagsdir."/GTAGS"
         let found = 1
         break
      endif
      "third try
      let g:cscopedir = substitute(system("findup cscope.out"), '[[:cntrl:]]', '', 'g')
      if !v:shell_error
         set csprg=cscope\ -C
         echom "Executing cs add ".g:gtagsdir."cscope.out from findup"
         execute "cs add ".g:cscopedir."/cscope.out"
         let found = 1
         break
      endif
      let iter = 1
   endwhile
   if found == 1
      execute "cs reset"
   endif
   return found
endfunction

let loadonce = 0
if has("cscope") && loadonce == 0
   let loadonce = 1
   " gtags cscope:
   let iter = 0
   while iter < 1
      " Using 'CTRL-\' then a search type makes the vim window
      " "shell-out", with search results displayed on the bottom
      nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
      nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
      nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
      nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
      nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
      nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
      nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
      nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
      " Using 'CTRL-spacebar' then a search type makes the vim window
      " split horizontally, with search result displayed in
      " the new window.
      nmap <C-[>s :scs find s <C-R>=expand("<cword>")<CR><CR>
      nmap <C-[>g :scs find g <C-R>=expand("<cword>")<CR><CR>
      nmap <C-[>c :scs find c <C-R>=expand("<cword>")<CR><CR>
      nmap <C-[>t :scs find t <C-R>=expand("<cword>")<CR><CR>
      nmap <C-[>e :scs find e <C-R>=expand("<cword>")<CR><CR>
      nmap <C-[>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
      nmap <C-[>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
      nmap <C-[>d :scs find d <C-R>=expand("<cword>")<CR><CR>
      " Hitting CTRL-space *twice* before the search type does a vertical
      " split instead of a horizontal one
      nmap <C-[><C-[>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
      nmap <C-[><C-[>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
      nmap <C-[><C-[>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
      nmap <C-[><C-[>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
      nmap <C-[><C-[>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
      nmap <C-[><C-[>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
      nmap <C-[><C-[>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>
      nmap <F9> :tp<CR>
      nmap <F10> :tn<CR>
      let iter = 1
   endwhile
endif

function GtagsUpdate()
   execute "silent !global -u | cs reset &"
   if v:shell_error
      echom "Failed to update tags database"
   else
      echom "Updated tags database"
   endif
endfunction

function GtagsInit()
   call GtagsAdd()
   call GtagsUpdate()
endfunction

command GtagsUp call GtagsUpdate()
nmap <silent> <C-g> :GtagsUp<CR>

command Gtags call GtagsInit()
nmap <silent> <M-g> :Gtags<CR>
