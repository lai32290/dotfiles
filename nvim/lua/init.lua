local opt = vim.opt

P = function (table)
    print(vim.inspect(table))
    return table
end

require('plugins')
require('autocmd')

vim.cmd.swapfile = nil
opt.encoding = 'utf-8'
opt.fileencodings = 'utf-8'

vim.g.mapleader = ','
require('map')
vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('highlight_yank', {}),
  desc = 'Hightlight selection on yank',
  pattern = '*',
  callback = function()
    vim.highlight.on_yank { higroup = 'IncSearch', timeout = 300 }
  end,
})


local M = {}

local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local actions = require "telescope.actions"
local action_state = require "telescope.actions.state"
local conf = require("telescope.config").values

return M
