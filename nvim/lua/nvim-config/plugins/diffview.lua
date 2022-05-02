return function ()
  local cb = require'diffview.config'.diffview_callback
  local M = {}

  require'diffview'.setup {
     enhanced_diff_hl = true,
     default_args = {
        DiffviewOpen = "-uno"
     }
  }
  _G.Config.diffview = M
end
