vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.cmd [[colorscheme zk-yang]]

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
	local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
	vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- Add lazy to the `runtimepath`, this allows us to `require` it.
---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ import = "zk.plugins" }, {
	change_detection = {
		notify = false,
	},
})

require "zk.definitions"
require "zk.options"
require "zk.keymaps"
require "zk.statusline"
require "zk.commands"
