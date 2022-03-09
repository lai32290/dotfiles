local helper = require('helper')
local api = vim.api
local getpos = vim.fn.getpos
local Caju = {}

function Caju.extractIdFromLine(lineRow)
    helper.saveLastPos()
    api.nvim_win_set_cursor(0, { lineRow, 0 })

    local line = api.nvim_get_current_line()
    local nContent = line:gsub(".*(%w%w%w%w%w%w%w%w%-%w%w%w%w%-%w%w%w%w%-%w%w%w%w%-%w%w%w%w%w%w%w%w%w%w%w%w).*", '"%1",')
    api.nvim_set_current_line(nContent)

    helper.moveCursorToLastPos()
end

function Caju.extractId()
    local currentRow = helper.getCurrentPos()
    Caju.extractIdFromLine(currentRow)
end

function Caju.extractSelectedId()
    local firstRow, _, lastRow = unpack(helper.getSelectedPos())

    for i = firstRow, lastRow do
        Caju.extractIdFromLine(i)
    end
end

return Caju
