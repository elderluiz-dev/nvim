
local map = vim.keymap.set

-- General
map("n", "<leader>w", "<cmd>write<cr>", { desc = "Save file" })
map("n", "<leader>q", "<cmd>quit<cr>", { desc = "Quit" })
map("n", "<Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search" })

-- Window navigation
map("n", "<C-h>", "<C-w>h", { desc = "Move left" })
map("n", "<C-j>", "<C-w>j", { desc = "Move down" })
map("n", "<C-k>", "<C-w>k", { desc = "Move up" })
map("n", "<C-l>", "<C-w>l", { desc = "Move right" })

-- Window management
map("n", "<leader>sv", "<cmd>vsplit<cr>", { desc = "Vertical split" })
map("n", "<leader>sh", "<cmd>split<cr>", { desc = "Horizontal split" })
map("n", "<leader>sx", "<cmd>close<cr>", { desc = "Close split" })

-- Indentation
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Familiar editing shortcuts
map("n", "<C-a>", "ggVG", { desc = "Select all" })
map("v", "<C-c>", '"+y', { desc = "Copy to system clipboard" })
map("n", "<C-v>", '"+p', { desc = "Paste from system clipboard" })
map("i", "<C-v>", '<C-r>+', { desc = "Paste from system clipboard" })


-- Terminal
map("n", "<C-1>", function()
    vim.cmd("botright 12split")
    vim.cmd("terminal")
    vim.cmd("startinsert")
end, { desc = "Open terminal" })

-- Close terminal with Escape
map("t", "<Esc>", "<C-\\><C-n><cmd>close<cr>", {
    desc = "Close terminal",
})
