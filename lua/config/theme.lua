
-- Custom colorscheme: Athlas
vim.cmd("highlight clear")
vim.o.background = "dark"
vim.g.colors_name = "athlas"

local colors = {
    black = "#000000",
    white = "#E0E0E0",
    yellow = "#FFD54A",
    gray = "#777777",
    dark = "#202020",
    darker = "#111111",
    red = "#FF5555",
}

local highlights = {
    -- Editor
    Normal = { fg = colors.white, bg = colors.black },
    NormalFloat = { fg = colors.white, bg = colors.darker },
    FloatBorder = { fg = colors.gray, bg = colors.darker },

    Cursor = { fg = colors.black, bg = colors.yellow },
    CursorLine = { bg = colors.darker },
    LineNr = { fg = colors.gray },
    CursorLineNr = { fg = colors.yellow, bold = true },
    SignColumn = { bg = colors.black },

    Visual = { bg = colors.dark },
    Search = { fg = colors.black, bg = colors.yellow },
    IncSearch = { fg = colors.black, bg = colors.yellow, bold = true },

    -- Status line and separators
    StatusLine = { fg = colors.white, bg = colors.darker },
    StatusLineNC = { fg = colors.gray, bg = colors.black },
    WinSeparator = { fg = colors.dark },

    -- Popup menu
    Pmenu = { fg = colors.white, bg = colors.darker },
    PmenuSel = { fg = colors.black, bg = colors.yellow, bold = true },
    PmenuSbar = { bg = colors.dark },
    PmenuThumb = { bg = colors.gray },

    -- Syntax
    Comment = { fg = colors.gray, italic = true },
    String = { fg = colors.white },
    Character = { fg = colors.white },
    Number = { fg = colors.yellow },
    Boolean = { fg = colors.yellow },
    Constant = { fg = colors.yellow },

    Function = { fg = colors.yellow },
    Identifier = { fg = colors.white },

    Statement = { fg = colors.yellow },
    Conditional = { fg = colors.yellow },
    Repeat = { fg = colors.yellow },
    Keyword = { fg = colors.yellow, bold = true },
    Operator = { fg = colors.white },

    Type = { fg = colors.white, bold = true },
    Structure = { fg = colors.white },
    PreProc = { fg = colors.yellow },
    Special = { fg = colors.yellow },

    Todo = { fg = colors.black, bg = colors.yellow, bold = true },

    -- Diagnostics
    DiagnosticError = { fg = colors.red },
    DiagnosticWarn = { fg = colors.yellow },
    DiagnosticInfo = { fg = colors.white },
    DiagnosticHint = { fg = colors.gray },

    -- Git signs
    GitSignsAdd = { fg = colors.yellow },
    GitSignsChange = { fg = colors.yellow },
    GitSignsDelete = { fg = colors.gray },
    GitSignsChangedelete = { fg = colors.yellow },

    -- Mode Accent
    ModeAccent = {
        fg = "#000000",
        bg = "#FFD54A",
        bold = true,
    },

}

for group, settings in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, settings)
end

