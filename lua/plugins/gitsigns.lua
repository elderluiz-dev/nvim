
return {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },

    opts = {
        signs = {
            add = { text = "▎" },
            change = { text = "▎" },
            delete = { text = "▁" },
            topdelete = { text = "▔" },
            changedelete = { text = "▎" },
        },

        on_attach = function(bufnr)
            local gs = require("gitsigns")
            local map = vim.keymap.set
            local opts = { buffer = bufnr, silent = true }

            map("n", "<leader>hp", gs.preview_hunk, opts)
            map("n", "<leader>hs", gs.stage_hunk, opts)
            map("n", "<leader>hr", gs.reset_hunk, opts)
            map("n", "<leader>hb", gs.blame_line, opts)
        end,
    },
}

