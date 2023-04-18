vim.keymap.set('n', '<leader>gc', ':Octo pr create<cr>', { noremap = true })
vim.keymap.set('n', '<leader>gl', ':Octo pr list<cr>', { noremap = true })

local group = vim.api.nvim_create_augroup('octo-custom-config', { clear = true })
vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'octo' },
    group = group,
    callback = function()
        vim.keymap.set('n', '<leader>b', ':Octo pr browser<cr>', { noremap = true, buffer = true })
        vim.o.number = true
        vim.o.relativenumber = true
    end
})
