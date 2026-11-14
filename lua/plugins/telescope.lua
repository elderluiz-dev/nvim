
return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",

    dependencies = {
        "nvim-lua/plenary.nvim",
    },

    keys = {
        {
            "<leader>ff",
            function()
                require("telescope.builtin").find_files()
            end,
            desc = "Find files",
        },
        {
            "<leader>fg",
            function()
                require("telescope.builtin").live_grep()
            end,
            desc = "Search in files",
        },
        {
            "<leader>fb",
            function()
                require("telescope.builtin").buffers()
            end,
            desc = "Find buffers",
        },
        {
            "<leader>fh",
            function()
                require("telescope.builtin").help_tags()
            end,
            desc = "Search help",
        },
    },

    opts = {
        defaults = {
            prompt_prefix = "  ",
            selection_caret = "  ",
            sorting_strategy = "ascending",

            path_display = {
                "smart"
            },

            layout_config = {
                horizontal = {
                    prompt_position = "top",
                    preview_width = 0.55,
                },
                width = 0.90,
                height = 0.85,
            },

            file_ignore_patterns = {
                "%.git/",
                "node_modules/",
                "__pycache__/",
                "%.pyc",
            },
        },
    },
}

