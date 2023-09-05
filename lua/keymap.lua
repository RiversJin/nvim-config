local opt = {
    noremap = true
}
local window_navigation = function()
    -- the 'n' means normal

    vim.keymap.set('n', '<C-h>', '<C-w>h', opt)
    vim.keymap.set('n', '<C-j>', '<C-w>j', opt)
    vim.keymap.set('n', '<C-k>', '<C-w>k', opt)
    vim.keymap.set('n', '<C-l>', '<C-w>l', opt)
end
local resize_windows = function()
    vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
    vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
    vim.keymap.set('n', '<C-Left>', ':vertical resize +2<CR>', opts)
    vim.keymap.set('n', '<C-Right>', ':vertical resize -2<CR>', opts)
end

window_navigation()
resize_windows()
