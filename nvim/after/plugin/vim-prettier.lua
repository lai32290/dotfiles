vim.keymap.del('n', '<leader>p')

local group = vim.api.nvim_create_augroup('vim-prettier-custom-config', { clear = true })
vim.api.nvim_create_autocmd('BufEnter', {
    pattern = { '*.ts', '*.tsx', '*.js', '*.jsx' },
    group = group,
    callback = function()
        vim.keymap.set('n', '<leader>p', ':Prettier<cr>', { buffer = true })
    end,
})

