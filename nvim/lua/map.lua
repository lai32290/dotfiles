vim.keymap.set('i', 'jk', '<ESC>')
vim.keymap.set('i', '<c-x>', '<ESC>:w<cr>')
vim.keymap.set('n', '<c-x>', '<ESC>:w<cr>')
vim.keymap.set('n', '<leader><space>', '<cmd>noh<cr>')
vim.keymap.set('n', 'gl', '<cmd>bn<cr>')
vim.keymap.set('n', 'gh', '<cmd>bp<cr>')
vim.keymap.set('n', 'cb', '<cmd>bd<cr>')
vim.keymap.set('n', 'cB', '<cmd>bd!<cr>')
vim.keymap.set('n', '<leader>cp', ':let @+ = expand("%")<cr>')
vim.keymap.set('n', 'p', 'p=`]', { noremap = true })
vim.keymap.set('n', '<c-f>', ':Ag ')

