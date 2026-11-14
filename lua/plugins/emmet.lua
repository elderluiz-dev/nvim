
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
                snippets = {
                    ["html:5"] = table.concat({
                        "<!DOCTYPE html>",
                        '<html lang="pt-BR">',
                        "<head>",
                        '    <meta charset="UTF-8">',
                        '    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
                        "    <title>Document</title>",
                        "</head>",
                        "<body>",
                        "    ${child}|",
                        "</body>",
                        "</html>",
                    }, "\n"),
                },
            },
        }
    end,
}

