if &compatible
    set nocompatible
endif
filetype off
set runtimepath+=/home/nori/.vim/bundle/dein/repos/github.com/Shougo/dein.vim
set rtp+=~/.vim
call dein#begin('/home/nori/.vim/bundle/dein')

call dein#add('/home/nori/.vim/bundle/dein/repos/github.com/Shougo/dein.vim')

call dein#add('neovim/nvim-lspconfig')

call dein#add('scrooloose/nerdcommenter.git')

call dein#add('scrooloose/nerdtree.git')

call dein#add('godlygeek/tabular.git')

call dein#add('plasticboy/vim-markdown.git', {'on_ft': 'markdown'})

call dein#add('tpope/vim-fugitive.git')

call dein#add('christoomey/vim-conflicted.git')

call dein#add('flazz/vim-colorschemes.git')

call dein#add('felixhummel/setcolors.vim.git')

call dein#add('Yggdroot/indentLine.git')

call dein#add('vimoutliner/VimOutliner.git')

call dein#add('edkolev/tmuxline.vim')

call dein#add('vim-airline/vim-airline')

call dein#add('vim-airline/vim-airline-themes', {
            \    'depends': 'vim-airline/vim-airline'})

call dein#add('inkarkat/vim-ingo-library')

call dein#add('inkarkat/vim-DeleteTrailingWhitespace')

call dein#add('mhinz/vim-signify')

call dein#add('dag/vim-fish.git')

call dein#add('junegunn/fzf.git')

call dein#add('ojroques/vim-oscyank.git')

call dein#add('airblade/vim-gitgutter')

call dein#add('nvim-lua/plenary.nvim')

call dein#add('kyazdani42/nvim-web-devicons')

call dein#add('sindrets/diffview.nvim',
            \    {'depends':
            \        ['nvim-lua/plenary.nvim',
            \         'kyazdani42/nvim-web-devicons']})

call dein#end()

filetype plugin on

syntax enable

set background=dark


" -- Misc




" Highlight past column 80
highlight ColorColumn ctermbg=red

" Enables 256 color mode over SSH
set t_Co=256

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
" :set listchars=tab:→\,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»
set listchars=tab:·⁖,trail:¶
set directory^=$HOME/.vim/swap//
set swapfile
set autowrite


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
    set tabstop=4	      	"Turns \t into spaces
    set shiftwidth=4    	"Turns indentation into spaces
    set autoindent

" -- Mappings

" Move a line of text using ALT-[jk]
nmap <m-j> mz:m+<cr>`z
nmap <m-k> mz:m-2<cr>`z
vmap <m-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <m-k> :m'<-2<cr>`>my`<mzgv`yo`z


" F3: Toggle list (display unprintable characters).
nnoremap <F3> :set list!<CR>

" <gf> defaults to creating new file when none can be found
:map gf :e <cfile><CR>





" -- Number width


set ruler            "Always show current line number
set number	        	"Line numbering is on by default
set relativenumber   "Relative line number is on
set numberwidth=4   	"Line number width

function TRelative()	"This function toggles relative line numbering
	set relativenumber!
endfunc

function TNumber()  	"This function toggles line numbering
	set number!
endfunc


" Maps RLN toggle to \-r
map <LEADER>r :call TRelative()<cr>

" Maps LN toggle to \t
map <LEADER>n :call TNumber()<cr>





" -- Commenting


" Maps \[ to an open comment horizontal ruler
" map <Leader>[ i/*<Return> *----------------------------------------------------------------------<ESC>

" Maps \] to a close comment horizontal ruler
" map <Leader>] i *----------------------------------------------------------------------<Return> */<ESC>

" -- NerdCommenter


" Adds one space after comment delimiters
let g:NERDSpaceDelims = 1

" Aligns line-wise comment delimiters to the left
let g:NERDDefaultAlign = 'left'

" Allows commenting empty lines
let g:NERDCommentEmptyLines = 1

" NERDCommenterToggle checks if selection is commented
let g:NERDToggleCheckAllLines = 1

" -- NERDTree

let NERDTreeShowHidden=1                " show dot files in NERDtree

  " toggles NERDTree with ctrl-n
map <c-n> :NERDTreeToggle<CR>
map <c-N> :NERDTreeFind<CR>

set ls=2
set statusline=%F%m%r%h%w\ \ \ Line:\ %4l\ /\ %-4L\ \ \ Column:\ %-3v\ \ %p%%

let g:DeleteTrailingWhitespace=1
let g:DeleteTrailingWhitespace_Action='delete'

set nobackup
" set backupdir=$DBC_HOME/tmp/vim/backup
set dir=$DBC_HOME/tmp/vim/swap

let g:airline_powerline_fonts = 1      " enable powerline symbols
let g:airline_theme='powerlineish'      " set airline theme

" Shortcut for OSCYank to send text selected in visual mode to the host
" clipboard
vnoremap <leader>c :OSCYank<CR>

" Clipboard overrides for system-clipboard integration and SSH-TMUX-Forwarding
" copy the current text selection to the system clipboard
" if has('gui_running') || has('nvim') && exists('$DISPLAY')
"   noremap <Leader>c "+y
" else
"   " copy to attached terminal using the yank(1) script:
"   " https://github.com/sunaku/home/blob/master/bin/yank
"   noremap <silent> <Leader>c y:call system('yank > /dev/tty', @0)<Return>
" endif


" Terminal mode remappings
" Esc key should return you to normal mode
tnoremap <ESC> <C-\><C-n>
" C-v Esc should send a "verbatim esc" to the terminal
tnoremap <LEADER><Esc> <Esc>

" Ctrl-P should open FZF it exists
nnoremap <C-p> :FZF<CR>
nmap <M-h> gT
nmap <M-l> gt

" enable ripgrep searches with :grep, :cnext/:cprevious, :copen/:cclose
" TODO: map the quickfix commands
set grepprg=rg\ --vimgrep
set grepformat^=%f:%l:%c:%m

" Default to !read-only in vimdiff
set noro

inoremap kj <Esc>

set t_8b=[48;2;%lu;%lu;%lum
set t_8f=[38;2;%lu;%lu;%lum

if !exists("autocommands_loaded")
   let autocommands_loaded=1

   " opens NERDTree when opening vim with no argument or directory as argument
   autocmd StdinReadPre * let s:std_in=1
   autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTreeToggle | endif
   autocmd VimEnter * if argc() >  0 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
endif

if !exists("rust_cmds_loaded")
   let rust_cmds_loaded=1
   " Handle rusty-tags if in a rusty file
   autocmd BufRead,BufNewFile *.rs :setlocal tags=./rusty-tags.vi;/,$RUST_SRC_PATH/rusty-tags.vi
   autocmd BufWritePost *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&" | redraw!
endif
