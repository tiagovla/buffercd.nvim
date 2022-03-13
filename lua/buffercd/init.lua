local core = require "buffercd.core"

local M = {}

local function _setup()
    local group = "buffercdAU"
    vim.api.nvim_create_augroup(group, {})
    vim.api.nvim_create_autocmd("BufEnter", { group = group, callback = core.on_enter })
    vim.api.nvim_create_autocmd("BufLeave", { group = group, callback = core.on_leave })
    vim.api.nvim_add_user_command("BuffercdList", core.print_summary, {})
end

function M.setup(config)
    _setup()
end

return M
