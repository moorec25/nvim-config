-- Shorten function name
local keybind = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }

-- Map space as leader key
keybind("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader=  " "

-- Normal -- 

-- Resize windows with arrows
keybind("n", "<C-Up>", ":resize -2<CR>", opts)
keybind("n", "<C-Down>", ":resize +2<CR>", opts)
keybind("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keybind("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keybind("n", "<S-l>", ":bnext<CR>", opts)
keybind("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keybind("n", "<A-j>", ":m .+1<CR>==", opts)
keybind("n", "<A-k>", ":m .-2<CR>==", opts)

-- Delete highlights
keybind("n", ",h", ":noh<CR>", opts)

-- Insert --
keybind("i", "jk", "<ESC>", opts)

-- Visual -- 
-- Stay in indent mode
keybind("v", ">", ">gv", opts)
keybind("v", "<", "<gv", opts)

-- Move text up and down
keybind("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keybind("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Don't overwite clipboard when pasting
keybind("v", "p", '"_dP', opts)
