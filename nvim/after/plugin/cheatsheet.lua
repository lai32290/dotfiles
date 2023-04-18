local M = {}

local window
local buffer

function M.setup()
    local currentW = vim.api.nvim_get_current_win()
    local wWidth = vim.api.nvim_win_get_width(currentW)
    local wHeight = vim.api.nvim_win_get_height(currentW)

    buffer = vim.api.nvim_create_buf(false, true)
    window = vim.api.nvim_open_win(buffer, true, {
        relative = 'cursor',
        width = wWidth - 10,
        height = wHeight - 4,
        row = 1,
        col = 1,
        focusable = true,
        style = 'minimal'
    })

    vim.api.nvim_win_set_buf(window, buffer)
    vim.api.nvim_buf_set_lines(buffer, 0, -1, true, {
        "Line 1",
        "Line 2"
    })

end

--M.setup()

return M
