
return {
    "mattn/emmet-vim",
    ft = {
        "html",
        "css",
        "javascriptreact",
        "typescriptreact",
    },

    init = function()
        vim.g.user_emmet_leader_key = "<C-y>"
        vim.g.user_emmet_settings = {
            html = {
                indentation = "    ",
            },
        }
    end,
}

