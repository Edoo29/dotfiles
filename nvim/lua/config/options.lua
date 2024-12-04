-- vim.opt.laststatus = 0 -- Disable the statusline

vim.opt.number = true -- show line number
vim.opt.relativenumber = true -- use relative line number

vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false

vim.opt.scrolloff = 8

vim.opt.cul = true
vim.opt.culopt = "number"

-- folding
vim.opt.foldmethod = "indent"
vim.opt.foldenable = false
vim.opt.foldlevel = 99

vim.opt.shell = "pwsh"

-- Undercurl
-- vim.cmd([[let &t_Cs = "\e[4:3m"]])
-- vim.cmd([[let &t_Ce = "\e[4:0m"]])
