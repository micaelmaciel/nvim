require("config.lazy")
require("lazy").setup("plugins")
require("eraser")

require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

vim.opt.clipboard:append("unnamedplus")
vim.opt.number = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.api.nvim_set_keymap('n', '<leader>ia', 'gg=G``', { noremap = true, silent = true})

vim.diagnostic.config({
    signs = true,
    underline = true,
    severity_sort = true,
    float = {
        border = 'rounded',
    },
})

require'lspconfig'.pyright.setup{}
require'lspconfig'.clangd.setup{}


