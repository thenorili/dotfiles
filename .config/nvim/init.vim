"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin("$HOME/.cache/dein")

" Let dein manage dein
" Required:
call dein#add("$HOME/.cache/dein/repos/github.com/Shougo/dein.vim")


" Shows file system in a tree on the left-hand side of nvim
call dein#add('scrooloose/nerdtree.git', {
\               'hook_post_update': 'TSUpdate'})

" Essential, provides functional git API for nvim
call dein#add('tpope/vim-fugitive.git')

" Cute little tool for resolving git merge conflicts,
" has a few different options for display
call dein#add('christoomey/vim-conflicted.git', {
\               'depends': 'vim-fugitive.git'})

" Adds a sign column on the left of nvim
call dein#add('mhinz/vim-signify')

" Adds git markers in the sign column
call dein#add('airblade/vim-gitgutter', {
\               'depends':
\                   ['vim-fugitive.git',
\                    'vim-signify']})

" Adds lots of color schemes ?and some helper functions?
call dein#add('flazz/vim-colorschemes.git')

" todo description
call dein#add('felixhummel/setcolors.vim.git')

" Adds a marker character every indent
call dein#add('Yggdroot/indentLine.git')

" Unsure if necessary... adds outlining features
call dein#add('vimoutliner/VimOutliner.git')

" Integrates with tmux airline
call dein#add('edkolev/tmuxline.vim')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes', {
\               'depends': 'vim-airline'})

call dein#add('inkarkat/vim-ingo-library')

call dein#add('inkarkat/vim-DeleteTrailingWhitespace')

" Syntax and completion support for the fish language
call dein#add('dag/vim-fish.git')

" Fast fuzzy file search with fzf
" TODO add ctrl-p to activate
call dein#add('junegunn/fzf.git')

" Could add 'on_ft': 'rust' here...
" rust.vim provides the bare minimum needed for working with Rust in Vim,
" such as syntax highlighting, formatting, and file detection
call dein#add('rust-lang/rust.vim')

" Adds wiki functionality to vim, easily exported to html
call dein#add('vimwiki/vimwiki')

" Adds symmetrical bracket shortcuts for vim
call dein#add('tpope/vim-unimpaired')


" SECTION_START
" Rust-analyzer and nvim lsp/completion section
" Referenced https://sharksforarms.dev/posts/neovim-rust/
"
" todo: elucidate dependencies below

" Collection of common configurations for the Nvim LSP client
call dein#add('neovim/nvim-lspconfig')

" Completion framework
call dein#add('hrsh7th/nvim-cmp')

" LSP completion source for nvim-cmp
call dein#add('hrsh7th/cmp-nvim-lsp')

" Snippet completion source for nvim-cmp
call dein#add('hrsh7th/cmp-vsnip')

" Other usefull completion sources
call dein#add('hrsh7th/cmp-path')
call dein#add('hrsh7th/cmp-buffer')

" See hrsh7th's other plugins for more completion sources!

" To enable more of the features of rust-analyzer, such as inlay hints and more!
call dein#add('simrat39/rust-tools.nvim')

" Snippet engine
call dein#add('hrsh7th/vim-vsnip')

" SECTION_END

" lnori: do we want to upgrade to nightly nvim?
"
" Requires nvim 0.70 at least...
"   should add a check using dein!
" call dein#add('nvim-lua/plenary.nvim')
" call dein#add('kyazdani42/nvim-web-devicons')
" call dein#add('sindrets/diffview.nvim', {
" \               'depends':
" \                   ['plenary.nvim',
" \                    'nvim-web-devicons']})

" Required:
call dein#end()
" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"""""""""""""'"""
" -- General -- "
"""""""""""""'"""

    colorscheme slate

    filetype plugin on
    syntax enable
    set background=dark
    " Set ColorColumn color (column number is set in fsplugins)
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
    " Sets up vim swap and backup !!! need to call mkdir manually !!!
    set directory=$HOME/.vim/swap//
    set backupdir=$HOME/.vim/bkup//
    set swapfile
    set backup
    set autowrite
    "i forget what these do
    set ls=2
    set statusline=%F%m%r%h%w\ \ \ Line:\ %4l\ /\ %-4L\ \ \ Column:\ %-3v\ \ %p%%
    " enable ripgrep searches with :grep, :cnext/:cprevious, :copen/:cclose
    " TODO: map the quickfix commands
    set grepprg=rg\ --vimgrep
    set grepformat^=%f:%l:%c:%m
    " Default to !read-only in vimdiff (and everywhere)
    set noro
    " i forget what this does tbh
    set t_8b=[48;2;%lu;%lu;%lum
    set t_8f=[38;2;%lu;%lu;%lum
    set omnifunc=v:lua.vim.lsp.omnifunc

" -- Line numbering
    set ruler "current line gets number
    set number
    set relativenumber
    set numberwidth=4
    function TRelative()
        set relativenumber!
    endfunc
    function TNumber()
        set number!
    endfunc
    map <LEADER>r :call TRelative()<cr>
    map <LEADER>n :call TNumber()<cr>

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

    " Terminal mode remappings
    " Esc key should return you to normal mode
    tnoremap <ESC> <C-\><C-n>
    " C-v Esc should send a "verbatim esc" to the terminal
    tnoremap <LEADER><Esc> <Esc>
    " Ctrl-P should open FZF it exists
    nnoremap <C-p> :FZF<CR>
    nmap <M-h> gT
    nmap <M-l> gt

    " k+j in insert mode enters normal mode
    inoremap kj <Esc>

"""""""""""""""""""""""""""""""
" -- Plugin Customizations -- "
"""""""""""""""""""""""""""""""
"
" -- NERDTree
    let NERDTreeShowHidden=1

    " toggles NERDTree with ctrl-n
    map <c-n> :NERDTreeToggle<CR>
    map <c-s-N> :NERDTreeFind<CR>
" -- DeleteTrailingWhitespace
    let g:DeleteTrailingWhitespace=1
    let g:DeleteTrailingWhitespace_Action='delete'
" -- airline
    let g:airline_powerline_fonts = 1      " enable powerline symbols
    let g:airline_theme='powerlineish'      " set airline theme

""""""""""""""""""""""
" -- Autocommands -- "
""""""""""""""""""""""

if !exists("autocommands_loaded")
   let autocommands_loaded=1

   " opens NERDTree when opening vim with no argument or directory as argument
   autocmd StdinReadPre * let s:std_in=1
   autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTreeToggle | endif
   autocmd VimEnter * if argc() >  0 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
endif

" SECTION_START
" Referenced https://sharksforarms.dev/posts/neovim-rust/

" Set completeopt to have a better completion experience
" :help completeopt
" menuone: popup even when there's only one match
" noinsert: Do not insert text until a selection is made
" noselect: Do not select, force user to select one from the menu
set completeopt=menuone,noinsert,noselect

" Avoid showing extra messages when using completion
set shortmess+=c


" TODO move this to a real lua file...

" Configure LSP through rust-tools.nvim plugin.
" rust-tools will configure and enable certain LSP features for us.
" See https://github.com/simrat39/rust-tools.nvim#configuration
lua <<EOF
local nvim_lsp = require'lspconfig'

local opts = {
    tools = { -- rust-tools options
        executor = require("rust-tools/executors").termopen,
        reload_workspace_from_cargo_toml = true,
        autoSetHints = true,
        inlay_hints = {
            auto = true,
            only_current_line = false,
            show_parameter_hints = true,
            parameter_hints_prefix = "",
            other_hints_prefix = "",
            max_len_align = true,
        },
    },

    -- all the opts to send to nvim-lspconfig
    -- these override the defaults set by rust-tools.nvim
    -- see https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#rust_analyzer
    server = {

        -- on_attach is a callback called when the language server attachs to the buffer

        -- lnori: error on previous "hover_with_actions; unsure how to resolve;
        -- I think just set up a custom lua function and call it here?
        -- too much work for right now, I'll see how it goes...
        --    rust-tools: hover_with_actions is deprecated, please setup a keybind to
        --    :RustHoverActions in on_attach instead
        on_attach = on_attach,
        settings = {
            -- to enable rust-analyzer settings visit:
            -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
            ["rust-analyzer"] = {
                -- enable clippy on save
                checkOnSave = {
                    command = "clippy"
                },
            }
        }
    },
}

require('rust-tools').setup(opts)
require('rust-tools').inlay_hints.set()
require('rust-tools').inlay_hints.enable()
EOF

" Setup Completion
" See https://github.com/hrsh7th/nvim-cmp#basic-configuration
lua <<EOF
local cmp = require'cmp'
cmp.setup({
  -- Enable LSP snippets
  snippet = {
    expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    -- Add tab support
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    })
  },

  -- Installed sources
  sources = {
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
    { name = 'path' },
    { name = 'buffer' },
  },
})
EOF

" Code navigation shortcuts for vim lsp
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>

" Set updatetime for CursorHold
" 300ms of no cursor movement to trigger CursorHold
set updatetime=300
" Show diagnostic popup on cursor hold
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })

" Goto previous/next diagnostic warning/error
nnoremap <silent> g[ <cmd>lua vim.diagnostic.goto_prev()<CR>
nnoremap <silent> g] <cmd>lua vim.diagnostic.goto_next()<CR>

" have a fixed column for the diagnostics to appear in
" this removes the jitter when warnings/errors flow in
set signcolumn=yes
