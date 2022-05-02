-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/nori/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/nori/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/nori/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/nori/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/nori/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Spacegray.vim"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/Spacegray.vim",
    url = "https://github.com/ajh17/Spacegray.vim"
  },
  ["ayu-vim"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/ayu-vim",
    url = "https://github.com/ayu-theme/ayu-vim"
  },
  catppuccin = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["doom-one.nvim"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/doom-one.nvim",
    url = "https://github.com/NTBBloodbath/doom-one.nvim"
  },
  ["dracula.nvim"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/dracula.nvim",
    url = "https://github.com/Mofiqul/dracula.nvim"
  },
  everforest = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/everforest",
    url = "https://github.com/sainnhe/everforest"
  },
  gruvbox = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/gruvbox-community/gruvbox"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/gruvbox-material",
    url = "https://github.com/sainnhe/gruvbox-material"
  },
  ["iceberg.vim"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/iceberg.vim",
    url = "https://github.com/cocopon/iceberg.vim"
  },
  ["jellybeans.vim"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/jellybeans.vim",
    url = "https://github.com/nanotech/jellybeans.vim"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/lush.nvim",
    url = "https://github.com/rktjmp/lush.nvim"
  },
  ["material.nvim"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/material.nvim",
    url = "https://github.com/sindrets/material.nvim"
  },
  ["neodark.vim"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/neodark.vim",
    url = "https://github.com/KeitaNakamura/neodark.vim"
  },
  ["night-owl.vim"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/night-owl.vim",
    url = "https://github.com/haishanh/night-owl.vim"
  },
  ["nvim-base16"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/nvim-base16",
    url = "https://github.com/RRethy/nvim-base16"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["oceanic-primal-vim"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/oceanic-primal-vim",
    url = "https://github.com/barlog-m/oceanic-primal-vim"
  },
  ["onedarkpro.nvim"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/onedarkpro.nvim",
    url = "https://github.com/olimorris/onedarkpro.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["palenight.vim"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/palenight.vim",
    url = "https://github.com/Cybolic/palenight.vim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["predawn.vim"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/predawn.vim",
    url = "https://github.com/juanedi/predawn.vim"
  },
  ["quantum.vim"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/quantum.vim",
    url = "https://github.com/kjssad/quantum.vim"
  },
  ["rose-pine"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/sindrets/rose-pine-neovim"
  },
  ["seoul256.vim"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/seoul256.vim",
    url = "https://github.com/junegunn/seoul256.vim"
  },
  ["smyck.vim"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/smyck.vim",
    url = "https://github.com/dim13/smyck.vim"
  },
  ["tender.vim"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/tender.vim",
    url = "https://github.com/jacoborus/tender.vim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-code-dark"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/vim-code-dark",
    url = "https://github.com/tomasiser/vim-code-dark"
  },
  ["vim-colors-xcode"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/vim-colors-xcode",
    url = "https://github.com/arzg/vim-colors-xcode"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-horizon"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/vim-horizon",
    url = "https://github.com/ntk148v/vim-horizon"
  },
  ["vim-hybrid"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/vim-hybrid",
    url = "https://github.com/w0ng/vim-hybrid"
  },
  ["vim-monokai-pro"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/vim-monokai-pro",
    url = "https://github.com/phanviet/vim-monokai-pro"
  },
  ["vim-one"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/vim-one",
    url = "https://github.com/rakr/vim-one"
  },
  ["zenbones.nvim"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/zenbones.nvim",
    url = "https://github.com/mcchrish/zenbones.nvim"
  },
  ["zephyr-nvim"] = {
    loaded = true,
    path = "/home/nori/.local/share/nvim/site/pack/packer/start/zephyr-nvim",
    url = "https://github.com/glepnir/zephyr-nvim"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
