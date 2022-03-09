local opt = vim.opt
local api = vim.api

require('plugins')
require('autocmd')

local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

opt.encoding = 'utf-8'
opt.fileencodings = 'utf-8'

vim.g.mapleader = ','
--vim.g['@u'] = '0df:x<esc>c$"<esc>p",j'

map('i', 'jk', '<ESC>')
map('i', '<c-x>', '<ESC>:w<cr>')
map('n', '<c-x>', '<ESC>:w<cr>')
map('n', '<leader><space>', ':noh<cr>')
map('n', 'gn', ':bn<cr>')
map('n', 'gp', ':bp<cr>')
map('n', 'gd', ':bd<cr>')
map('n', '<leader>cp', ':let @+ = expand("%")<cr>')
map('n', '<leader><leader>s', ':source $MYVIMRC<cr>')
map('n', '<leader><leader>ev', ':e $MYVIMRC<cr>')

map('n', '<leader>py', '<Plug>(Prettier)')

-- Depends on NERDTree
map('n', '<c-k><c-b>', ':NERDTreeToggle<cr>')
map('n', '<F3>', ':NERDTreeFind<cr>')
-- Depends on NERDTree

-- Depends on Git
map('n', '<leader>ga', ':Git add %<cr>')
map('n', '<leader>gd', ':Gdiffsplit %<cr>')
map('n', '<leader>gb', ':Git blame<cr>')
-- Depends on Git

-- Depends on FZF
map('n', '<leader>e', ':Files<cr>')
--map('n', '<leader>e', ':lua require("telescope.builtin").find_files()<cr>')
map('n', '<leader>b', ':Buffers<cr>')
--map('n', '<leader>b', '<cmd>lua require("telescope.builtin").buffers()<cr>')
map('n', '<leader>m', ':Marks<cr>')
map('n', '<c-f>', ':Ag ')
--map('n', '<c-f>', '<cmd>lua require("telescope.builtin").live_grep()<cr>')
-- Depends on FZF

local M = {}
function M.hello()
    print('dd')
end

return M
