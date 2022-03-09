vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use {
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
end)
