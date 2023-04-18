-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        mappings = {
            list = {
                { key = "u", action = "dir_up" },
            },
        },
    },
    renderer = {
        group_empty = true,
        icons = {
            show = {
                git = true,
                file = false,
                folder = false,
                folder_arrow = true,
            },
            glyphs = {
                git = {
                    unstaged = "✗",
                    staged = "✓",
                    unmerged = "⌥",
                    renamed = "➜",
                    untracked = "★",
                    deleted = "⊖",
                    ignored = "◌",
                },
            },
        },
    },
    actions = {
        change_dir = {
            enable = false,
            restrict_above_cwd = true
        },
        open_file = {
            quit_on_open = true
        }
    },
    update_focused_file = {
        update_root = true
    },
    filters = {
        dotfiles = true,
    },
})

vim.keymap.set('n', '<c-k><c-b>', ':NvimTreeToggle<cr>', { silent = true })
vim.keymap.set('n', '<F3>', ':NvimTreeFindFile<cr>')

