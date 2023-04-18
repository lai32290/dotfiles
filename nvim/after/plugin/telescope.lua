require('Telescope').setup({
    defaults = {
        mappings = {
            i = {
                ["<Esc>"] = "close",
                ["<C-j>"] = "move_selection_next",
                ["<C-k>"] = "move_selection_previous",
                ["<C-d>"] = "results_scrolling_down",
                ["<C-u>"] = "results_scrolling_up"
            }
        }
    },
    extensions = {
        command_palette = {
            { "GitHub",
                { "Create pull request", ":Octo pr create" },
            },
            { "Vim",
                { "Edit .vimrc", ":e ~/.config/nvim/init.vim" },
                { "Edit lua plugins", ":e ~/.config/nvim/lua/plugins.lua" },
                { "Edit lua init", ":e ~/.config/nvim/lua/init.lua" },
                { "Edit lua map", ":e ~/.config/nvim/lua/map.lua" },
            }
        },
    },
})
require('telescope').load_extension('neoclip')
require('telescope').load_extension('command_palette')
require('telescope').load_extension('ag')

vim.keymap.set('n', 'me', ':Telescope find_files<cr>')
vim.keymap.set('n', 'mb', ':Telescope buffers<cr>')
vim.keymap.set('n', 'mh', ':Telescope oldfiles<cr>')
vim.keymap.set('n', 'mm', ':Telescope marks<cr>')
vim.keymap.set('n', 'ma', ':Telescope command_palette<cr>')
