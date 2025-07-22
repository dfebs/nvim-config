require('core.options')
require('core.keymaps')

vim.g.clipboard = {
  name = "WslClipboard",

  copy = {
    ["+"] = "clip.exe",
    ["*"] = "clip.exe",
  },

  paste = {
    ["+"] = 'powershell.exe -NoLogo -NoProfile -Command [Console]::Out.Write($(Get-Clipboard -Raw).ToString().Replace("`r", ""))',
    ["*"] = 'powershell.exe -NoLogo -NoProfile -Command [Console]::Out.Write($(Get-Clipboard -Raw).ToString().Replace("`r", ""))', 
  },

  cache_enabled = 0,
}

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end

local rtp = vim.opt.rtp
rtp:prepend(lazypath)

require('lazy').setup({
    require('plugins/neo-tree'),
    require('plugins/color-theme'),
})

