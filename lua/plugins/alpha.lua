
return {
    "goolord/alpha-nvim",
    lazy = false,

    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = {
            [[     _    _____ _   _ _        _    ____  ]],
            [[    / \  |_   _| | | | |      / \  / ___| ]],
            [[   / _ \   | | | |_| | |     / _ \ \___ \ ]],
            [[  / ___ \  | | |  _  | |___ / ___ \ ___) |]],
            [[ /_/   \_\ |_| |_| |_|_____/_/   \_\____/ ]],
        }

        dashboard.section.buttons.val = {
            dashboard.button("e", "New file", "<cmd>ene | startinsert<CR>"),
            dashboard.button("f", "Find file", "<cmd>lua require('telescope.builtin').find_files()<CR>"),
            dashboard.button("g", "Search text", "<cmd>lua require('telescope.builtin').live_grep()<CR>"),
            dashboard.button("r", "Recent files", "<cmd>lua require('telescope.builtin').oldfiles()<CR>"),
            dashboard.button("c", "Neovim config", "<cmd>edit " .. vim.fn.stdpath("config") .. "/init.lua<CR>"),
            dashboard.button("q", "Quit", "<cmd>qa<CR>"),
        }

        dashboard.section.header.opts.hl = "AlphaHeader"
        dashboard.section.buttons.opts.hl = "AlphaButtons"

        for _, button in ipairs(dashboard.section.buttons.val) do
            button.opts.hl = "AlphaButtons"
            button.opts.hl_shortcut = "AlphaShortcut"
        end

        dashboard.section.footer.val = "NEOVIM • ATHLAS"

        alpha.setup(dashboard.config)
    end,
}

