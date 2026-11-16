-- Custom colorscheme: Athlas

vim.cmd("highlight clear")
vim.o.background = "dark"
vim.g.colors_name = "athlas"

-- Palette
local colors = {
    black  = "#000000",
    white  = "#E0E0E0",
    cyan   = "#4AFFCE",
    gray   = "#777777",
    dark   = "#202020",
    darker = "#111111",
    red    = "#FF5555",
}

-- Highlight definitions
local highlights = {
    -- Editor
    Normal          = { fg = colors.white, bg = colors.black },
    NormalFloat     = { fg = colors.white, bg = colors.darker },
    FloatBorder     = { fg = colors.gray, bg = colors.darker },

    Cursor          = { fg = colors.black, bg = colors.cyan },
    CursorLine      = { bg = colors.darker },
    LineNr          = { fg = colors.gray },
    CursorLineNr    = { fg = colors.cyan, bold = true },
    SignColumn      = { bg = colors.black },

    Visual          = { bg = colors.dark },
    Search          = { fg = colors.black, bg = colors.cyan },
    IncSearch       = { fg = colors.black, bg = colors.cyan, bold = true },

    -- Status line and separators
    StatusLine      = { fg = colors.white, bg = colors.darker },
    StatusLineNC    = { fg = colors.gray, bg = colors.black },
    WinSeparator    = { fg = colors.dark },

    -- Popup menu
    Pmenu           = { fg = colors.white, bg = colors.darker },
    PmenuSel        = { fg = colors.black, bg = colors.cyan, bold = true },
    PmenuSbar       = { bg = colors.dark },
    PmenuThumb      = { bg = colors.gray },

    -- Syntax
    Comment         = { fg = colors.gray, italic = true },
    String          = { fg = colors.white },
    Character       = { fg = colors.white },
    Number          = { fg = colors.cyan },
    Boolean         = { fg = colors.cyan },
    Constant        = { fg = colors.cyan },

    Function        = { fg = colors.cyan },
    Identifier      = { fg = colors.white },

    Statement       = { fg = colors.cyan },
    Conditional     = { fg = colors.cyan },
    Repeat          = { fg = colors.cyan },
    Keyword         = { fg = colors.cyan, bold = true },
    Operator        = { fg = colors.white },

    Type            = { fg = colors.white, bold = true },
    Structure       = { fg = colors.white },
    PreProc         = { fg = colors.cyan },
    Special         = { fg = colors.cyan },

    Todo            = { fg = colors.black, bg = colors.cyan, bold = true },

    -- Diagnostics
    DiagnosticError = { fg = colors.red },
    DiagnosticWarn  = { fg = colors.cyan },
    DiagnosticInfo  = { fg = colors.white },
    DiagnosticHint  = { fg = colors.gray },

    -- Git signs
    GitSignsAdd         = { fg = colors.cyan },
    GitSignsChange      = { fg = colors.cyan },
    GitSignsDelete      = { fg = colors.gray },
    GitSignsChangedelete = { fg = colors.cyan },

    -- Mode Accent
    ModeAccent = {
        fg = colors.black,
        bg = colors.cyan,
        bold = true,
    },

    -- Alpha
    AlphaHeader   = { fg = colors.cyan, bold = true },
    AlphaButtons  = { fg = colors.white },
    AlphaShortcut = { fg = colors.cyan, bold = true },
    AlphaFooter   = { fg = colors.gray },
}

-- Apply highlights
for group, settings in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, settings)
end
