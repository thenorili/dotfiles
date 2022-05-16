_G.Config = {
   common = require("nvim-config.common"),
}

NvimConfigDir = vim.fn.stdpath("config")

require("nvim-config.settings")
-- vim.cmd("source " .. NvimConfigDir .. "/mappings.vim")
-- vim.cmd("source " .. NvimConfigDir .. "/autocommands.vim")
require("nvim-config.plugins")

-- Colorscheme tweaks and settings
require("nvim-config.colorscheme")

-- vim.schedule(function()
--  require("nvim-config.lsp")
--  vim.cmd("do BufRead")
--end)

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "rust" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    -- disable = { "c", "rust" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  indent = {
    enable = true
  },
}
