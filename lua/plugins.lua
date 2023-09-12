local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", 
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = "<Space>"

local plugins = {
    { "catppuccin/nvim", 
        name = "catppuccin", 
        priority = 1000 ,
        opts = {
            transparent_background = true,
            term_colors = false
        },
        config = function ()
            
            vim.cmd([[colorscheme catppuccin-frappe]])
        end
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
          vim.o.timeout = true
          vim.o.timeoutlen = 300
        end,
        opts = {
        },
        config = function() 
            require("which-key").setup()
        end,
        cmd = "WhichKey"

    },
    {
        "nvim-treesitter/nvim-treesitter",
        version = false,
        build = ":TSUpdate",
        event = { "BufReadPost", "BufNewFile"},
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
            init = function()
                require("lazy.core.loader").disable_rtp_plugin("nvim-treesitter-textobjects")
                load_textobjects = true
            end,
        },
        cmd = { "TSUpdateSync" },
        opts = {
            highlight = { enable = true },
            indent = { enable = true },
            ensure_installed = {
                "lua"
            }
        },
    },
    {
       'nvim-telescope/telescope.nvim', 
       tag = '0.1.2',
       dependencies = { 'nvim-lua/plenary.nvim' }
    }
}
local opts = {}

require("lazy").setup(plugins, opts)

