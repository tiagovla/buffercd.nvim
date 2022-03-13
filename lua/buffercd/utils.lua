local U = {}

function U.check_valid_buf(buf_num)
    if not buf_num or buf_num < 1 then
        return false
    end
    local exists = vim.api.nvim_buf_is_valid(buf_num)
    return vim.bo[buf_num].buflisted and exists
end

function U.get_current_buf()
    return vim.api.nvim_get_current_buf()
end

function U.get_buf_name(id)
    return vim.api.nvim_buf_get_name(id)
end

function U.set_current_dir(path)
    vim.defer_fn(function()
        vim.api.nvim_set_current_dir(path)
    end, 0)
end

function U.get_cwd()
    return vim.fn.getcwd(-1, -1)
end

return U
