return { "catppuccin/nvim", 
    name = "catppuccin", 
    priority = 1000 ,
    opts = {
        transparent_background = true,
        term_colors = false
    },
    config = function (_, opts)
            require("catppuccin").setup(opts)
            vim.cmd([[colorscheme catppuccin-frappe]])
    	end
}
