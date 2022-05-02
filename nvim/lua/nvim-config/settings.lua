local opt = vim.opt
-- placeholder

if vim.fn.executable("rg") == 1 then
  opt.grepprg = "rg --vimgrep $*"
  opt.grepformat = "%f:%l:%c:%m"
end
