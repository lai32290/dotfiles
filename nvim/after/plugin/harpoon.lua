vim.keymap.set('n', '<leader>ha', ':lua require("harpoon.mark").add_file()<cr>', {})
vim.keymap.set('n', '<leader>hl', ':lua require("harpoon.ui").toggle_quick_menu()<cr>', {})
vim.keymap.set('n', '<leader>hn', ':lua require("harpoon.ui").nav_next()<cr>', {})
vim.keymap.set('n', '<leader>hp', ':lua require("harpoon.ui").nav_prev()<cr>', {})
vim.keymap.set('n', '<leader>1', ':lua require("harpoon.ui").nav_file(1)<cr>', {})
vim.keymap.set('n', '<leader>2', ':lua require("harpoon.ui").nav_file(2)<cr>', {})
vim.keymap.set('n', '<leader>3', ':lua require("harpoon.ui").nav_file(3)<cr>', {})
vim.keymap.set('n', '<leader>4', ':lua require("harpoon.ui").nav_file(4)<cr>', {})

