local set_tab = function()
    vim.opt.tabstop = 4
    vim.opt.softtabstop = 4
    vim.opt.shiftwidth = 4
    vim.opt.expandtab = true
end

local set_ui = function()
    vim.opt.number = true -- show number line
    --vim.opt.relativenumber = true
    vim.opt.splitbelow = true
    vim.opt.splitright = true
    vim.opt.showmode = true
end

local set_search = function()
    vim.opt.incsearch = true -- search as characters are entered
    vim.opt.hlsearch = true -- do not highlight matches
    vim.opt.ignorecase = true -- ignore case in searches by default
    vim.opt.smartcase = true -- but make it case sensitive if an uppercase is entered
end

function term_open_setup()
    vim.wo.number = false
    vim.wo.relativenumber = false
end

set_tab()
set_ui()
set_search()

vim.opt.mouse = ''

vim.api.nvim_exec([[autocmd TermOpen * lua term_open_setup()]], false)
