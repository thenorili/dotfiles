vim.cmd("packadd packer.nvim")

local function conf(config_name)
  return require(string.format("nvim-config.plugins.%s", config_name))
end

return require'packer'.startup {
  ---@diagnostic disable-next-line: unused-local
  function (use, use_rocks)

      use 'wbthomason/packer.nvim'

      use { 'nvim-lua/popup.nvim' }
      use { 'nvim-lua/plenary.nvim' }
--      use { 'kyazdani42/nvim-web-devicons', config = conf("nvim-web-devicons") }
      use { 'kyazdani42/nvim-web-devicons' }
      use { 'tpope/vim-fugitive' }

      -- THEMES
      use { 'rktjmp/lush.nvim' }
      use { 'rakr/vim-one' }
      use { 'ayu-theme/ayu-vim' }
      use { 'phanviet/vim-monokai-pro' }
      use { 'tomasiser/vim-code-dark' }
      use { 'w0ng/vim-hybrid' }
      use { 'nanotech/jellybeans.vim' }
      use { 'cocopon/iceberg.vim' }
      use { 'junegunn/seoul256.vim' }
      use { 'arzg/vim-colors-xcode' }
      use { 'haishanh/night-owl.vim' }
      use { 'KeitaNakamura/neodark.vim' }
      use { 'dim13/smyck.vim' }
      use { 'barlog-m/oceanic-primal-vim', branch = 'main', }
      use { 'jacoborus/tender.vim' }
      use { 'ntk148v/vim-horizon' }
      use { 'ajh17/Spacegray.vim' }
      use { 'sainnhe/gruvbox-material' }
      use { 'gruvbox-community/gruvbox' }
      use { 'kjssad/quantum.vim' }
      use { 'juanedi/predawn.vim' }
      use { 'glepnir/zephyr-nvim' }
      use { 'folke/tokyonight.nvim' }
      use { 'Mofiqul/dracula.nvim' }
      use { 'sindrets/material.nvim' }
      use { 'sindrets/rose-pine-neovim', as = 'rose-pine' }
      use { 'mcchrish/zenbones.nvim', requires = 'rktjmp/lush.nvim' }
      use { 'sainnhe/everforest' }
      use { 'Cybolic/palenight.vim' }
      use { 'olimorris/onedarkpro.nvim', branch = 'main' }
      use { 'RRethy/nvim-base16' }
      use { 'NTBBloodbath/doom-one.nvim' }
      use { 'catppuccin/nvim', as = "catppuccin" }
   end
}
