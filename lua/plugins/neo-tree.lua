
return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",

    cmd = "Neotree",

    keys = {
        {
            "<leader>e",
            "<cmd>Neotree toggle filesystem reveal left<CR>",
            desc = "Toggle file explorer",
        },
    },

    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons",
    },

    opts = {
        close_if_last_window = true,
        popup_border_style = "single",
        enable_git_status = true,
        enable_diagnostics = true,

        filesystem = {
            follow_current_file = {
                enabled = true,
            },

            filtered_items = {
                visible = true,
                hide_dotfiles = false,
                hide_gitignored = false,
                hide_by_name = {
                    ".DS_Store",
                    "thumbs.db",
                },
            },

            window = {
                position = "left",
                width = 32,

                mappings = {
                    ["<space>"] = "none",
                    ["h"] = "close_node",
                    ["l"] = "open",
                },
            },
        },
    },

    config = function(_, opts)
        require("neo-tree").setup(opts)
    end,
}

