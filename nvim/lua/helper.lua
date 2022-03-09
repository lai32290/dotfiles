local api = vim.api
local getpos = vim.fn.getpos

local H = {
    lastPost = {}
}

function H.getCurrentPos()
    return unpack(api.nvim_win_get_cursor(0))
end

function H.saveLastPos()
    local currentRow, currentCol = H.getCurrentPos()
    H.lastPos = { currentRow, currentCol }
end

function H.moveCursorToLastPos()
    api.nvim_win_set_cursor(0, H.lastPos)
end

function H.getSelectedPos()
    local _, firstRow, firstCol = unpack(getpos("'<"))
    local _, lastRow, lastCol = unpack(getpos("'>"))

    return { firstRow, firstRow, lastRow, lastCol }
end

return H
