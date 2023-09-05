--- variables ---
local gui_font = 'DejaVuSansM Nerd Font Mono Bold'
local nvim_transparency = 0.5
local neovide_transparency = 0.6
local blur = 4.0

--- functions ---
local alpha = function()
    return string.format("%x", math.floor(255 * nvim_transparency or 0.8))
end

--- configs ---
vim.o.guifont = gui_font
vim.g.transparency = nvim_transparency
vim.g.neovide_transparency = neovide_transparency
vim.g.neovide_background_color = "#0f1117" ..alpha()
vim.g.neovide_floating_blur_amount_x = blur 
vim.g.neovide_floating_blur_amount_y = blur 
