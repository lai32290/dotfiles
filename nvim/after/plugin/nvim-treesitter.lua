require('nvim-treesitter.configs').setup({
  ensure_installed = { "javascript", "lua", "vim", "help", "go", "python", "typescript", "php" },
  sync_install = true,
  auto_install = true,
  incremental_selection = {
    enable = true,
    keymaps = {
      --init_selection = "gnn", -- set to `false` to disable one of the mappings
      node_incremental = "gu",
      --scope_incremental = "grc",
      --node_decremental = "grm",
    },
  },
  indent = {
    enable = true
  },
})
