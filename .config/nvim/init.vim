set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" lua require('lspconfig').xx.setup{…}

lua require('nvim-config.common')

lua require('nvim-config')

colorscheme Chasing_Logic
