
return {
    "neovim/nvim-lspconfig",

    dependencies = {
        {
            "mason-org/mason.nvim",
            opts = {},
        },
        {
            "mason-org/mason-lspconfig.nvim",
            opts = {
                ensure_installed = {
                    "clangd",
                    "basedpyright",
                    "lua_ls",
                },
                automatic_enable = false,
            },
        },
        {
            "saghen/blink.cmp",
        },
    },

    config = function()
        -- Completion capabilities
        vim.lsp.config("*", {
            capabilities = require("blink.cmp").get_lsp_capabilities(),
        })

        -- Lua language server configuration
        vim.lsp.config("lua_ls", {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                    },
                    workspace = {
                        checkThirdParty = false,
                    },
                    telemetry = {
                        enable = false,
                    },
                },
            },
        })

        -- Python language server configuration
        vim.lsp.config("basedpyright", {
            settings = {
                basedpyright = {
                    analysis = {
                        typeCheckingMode = "basic",
                    },
                },
            },
        })


        -- Enable language servers
        vim.lsp.enable({
            "clangd",
            "basedpyright",
            "lua_ls",
        })

        -- Diagnostics appearance
        vim.diagnostic.config({
            virtual_text = true,
            signs = true,
            underline = true,
            update_in_insert = false,
            severity_sort = true,
        })

        -- Keymaps available when an LSP attaches to a buffer
        vim.api.nvim_create_autocmd("LspAttach", {
            callback = function(event)
                local opts = { buffer = event.buf, silent = true }
                local map = vim.keymap.set

                map("n", "K", vim.lsp.buf.hover, opts)
                map("n", "gd", vim.lsp.buf.definition, opts)
                map("n", "gD", vim.lsp.buf.declaration, opts)
                map("n", "gr", vim.lsp.buf.references, opts)
                map("n", "gi", vim.lsp.buf.implementation, opts)

                map("n", "<leader>rn", vim.lsp.buf.rename, opts)
                map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
                map("n", "<leader>d", vim.diagnostic.open_float, opts)

                map("n", "[d", vim.diagnostic.goto_prev, opts)
                map("n", "]d", vim.diagnostic.goto_next, opts)
            end,
        })
    end,
}

