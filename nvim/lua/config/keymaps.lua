local k = vim.keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

k.set("n", "<C-s>", ":w")
k.set("n", "<leader>rn", ":IncRename ")
k.set("n", "<C-b>", "<cmd>:Neotree toggle right<CR>")

-- Increment/decrement
k.set("n", "+", "<C-a>")
k.set("n", "-", "<C-x>")

-- Delete a word backwards
k.set("n", "dw", 'vb"_d')

-- Select all
k.set("n", "<C-a>", "gg<S-v>G")

-- New tab
k.set("n", "te", ":tabedit")
k.set("n", "<tab>", ":tabnext<Return>", opts)
k.set("n", "<s-tab>", ":tabprev<Return>", opts)
-- Split window
k.set("n", "ss", ":split<Return>", opts)
k.set("n", "sv", ":vsplit<Return>", opts)
-- Move window
k.set("n", "sh", "<C-w>h")
k.set("n", "sk", "<C-w>k")
k.set("n", "sj", "<C-w>j")
k.set("n", "sl", "<C-w>l")

-- Resize window
k.set("n", "<C-w><left>", "<C-w><")
k.set("n", "<C-w><right>", "<C-w>>")
k.set("n", "<C-w><up>", "<C-w>+")
k.set("n", "<C-w><down>", "<C-w>-")
