require("neodev").setup{}
require('mason').setup()
require("mason-lspconfig").setup()

local function on_attach()
    local map_options = {
        noremap = true,
        buffer = true,
    }

    vim.keymap.set("n", "K", vim.lsp.buf.hover, map_options)
    vim.keymap.set("n", "gd", require("telescope.builtin").lsp_definitions, map_options)
    vim.keymap.set("n", "gr", require('telescope.builtin').lsp_references, map_options)
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, map_options)
    vim.keymap.set("n", "gi", require('telescope.builtin').lsp_implementations, map_options)
    vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, map_options)
    vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, map_options)
    vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, map_options)
    vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, map_options)
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("mason-lspconfig").setup_handlers {
    function (server_name)
        require("lspconfig")[server_name].setup{
            capabilities = capabilities,
            on_attach = on_attach,
        }
    end,
}

