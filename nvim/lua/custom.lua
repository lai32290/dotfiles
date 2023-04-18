local Custom = {}

function Custom.updateSource()
    vim.api.nvim_command("source ~/.config/nvim/init.vim")
end

return Custom
