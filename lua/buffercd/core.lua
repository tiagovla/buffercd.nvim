local utils = require "buffercd.utils"

local history = {}
local last_exit_buf = 0

local M = {}

local function is_valid_buf(buf_num)
    return utils.check_valid_buf(buf_num) and buf_num ~= last_exit_buf
end

function M.on_enter()
    local buf = utils.get_current_buf()

    if not is_valid_buf(buf) then
        return
    end
    local past_path = history[buf]
    if past_path then
        utils.set_current_dir(past_path)
    end
end

function M.on_leave()
    local buf = utils.get_current_buf()
    if not is_valid_buf(buf) then
        return
    end
    last_exit_buf = buf
    history[buf] = utils.get_cwd()
end

function M.print_summary()
    for k, v in pairs(history) do
        local name = utils.get_buf_name(k)
        print(name .. " " .. v)
    end
end

return M
