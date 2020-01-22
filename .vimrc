set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdcommenter'

Plugin 'git://github.com/hail2u/vim-css3-syntax.git'

Plugin 'cakebaker/scss-syntax.vim'

Plugin 'git://github.com/shmargum/vim-sass-colors.git'

Plugin 'scrooloose/nerdtree'

Plugin 'godlygeek/tabular'

Plugin 'plasticboy/vim-markdown'

Plugin 'vim-ruby/vim-ruby'

Plugin 'tpope/vim-fugitive'

Plugin 'flazz/vim-colorschemes'

Plugin 'git://github.com/felixhummel/setcolors.vim.git'

Plugin 'git://github.com/Yggdroot/indentLine.git'

Plugin 'mattn/emmet-vim'

Plugin 'tridactyl/vim-tridactyl'

Plugin 'VimOutliner'

Plugin 'haml.zip'

Plugin 'vimwiki/vimwiki'






call vundle#end()

filetype plugin indent on

syntax enable





" -- Misc


" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic

" Sets up invisibles, off by default; toggle with f3
:set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»

set noswapfile






" -- Search


" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Turns on incremental search
set incsearch





" -- Tab


set expandtab	      	"Turns \t into \s
set tabstop=2	      	"Turns \t into 2 spaces
set shiftwidth=2    	"Turns indentation into 2 spaces


" -- Mappings


" Shift-enter inserts a newline above
nmap <S>-<CR> O<Esc>
" Enter inserts a newline below
nmap <CR> o<Esc>


" Move a line of text using ALT-[jk]
nmap <m-j> mz:m+<cr>`z
nmap <m-k> mz:m-2<cr>`z
vmap <m-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <m-k> :m'<-2<cr>`>my`<mzgv`yo`z


" Assigns directory tree view to ctrl-n
map <c-n> :NERDTreeToggle<CR>


" F3: Toggle list (display unprintable characters).
nnoremap <F3> :set list!<CR>

" <gf> defaults to creating new file when none can be found
:map gf :e <cfile><CR>





" -- Number width
        

set ruler             "Always show current position
set number	        	"Line numbering is on by default and relnum is off
set numberwidth=4   	"Line number width

function TRelative()	"This function toggles relative line numbering
	set relativenumber!
endfunc

function TNumber()  	"This function toggles line numbering
	set number!
endfunc


" Maps RLN toggle to ctrl-t
map <c-t> :call TRelative()<cr>

" Maps LN toggle to ctrl-shift-t
map <c-s-t> :call TNumber()<cr>





" -- Commenting  


" Maps \[ to an open comment horizontal ruler
map <Leader>[ i/* ==========================================================================<ESC>

" Maps \] to a close comment horizontal ruler
map <Leader>] i   ========================================================================== */<ESC>





" -- NerdCommenter


" Adds one space after comment delimiters
let g:NERDSpaceDelims = 1

" Aligns line-wise comment delimiters to the left
let g:NERDDefaultAlign = 'left'

" Allows commenting empty lines
let g:NERDCommentEmptyLines = 1

" NERDCommenterToggle checks if selection is commented
let g:NERDToggleCheckAllLines = 1





" -- VimCSS3Syntax


" Fixes highlighting for certain css properties
augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END





" -- Vim-markdown


" Highlights YAML frontmatter
let g:vim_markdown_frontmatter = 1





" -- vim-emmet


let g:user_emmet_leader_key='<M-,>'
let g:user_emmet_install_global = 0
autocmd FileType html,css,scss EmmetInstall

