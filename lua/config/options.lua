
local opt = vim.opt

-- Default shell
opt.shell = vim.fn.exepath("fish")
opt.shellcmdflag = "-c"

-- Interface
opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"
opt.cursorline = true
opt.termguicolors = true
opt.showmode = false
opt.laststatus = 3

-- Editor behavior
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true
opt.wrap = false
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Files
opt.undofile = true
opt.backup = false
opt.swapfile = false

-- Performance and usability
opt.updatetime = 250
opt.timeoutlen = 3000
opt.mouse = "a"
opt.clipboard = "unnamedplus"


-- Terminal behavior
vim.api.nvim_create_autocmd("TermOpen", {
    callback = function(event)
        vim.opt_local.number = false
        vim.opt_local.relativenumber = false
        vim.opt_local.signcolumn = "no"

        -- Enter terminal mode after the terminal is created
        vim.schedule(function()
            if vim.api.nvim_buf_is_valid(event.buf)
                and vim.api.nvim_get_current_buf() == event.buf then
                vim.cmd("startinsert")
            end
        end)
    end,
})


_G.nvim_mode_label = function()
    local mode = vim.api.nvim_get_mode().mode

    local modes = {
        n = "NORMAL",
        no = "OP-PENDING",
        i = "INSERT",
        v = "VISUAL",
        V = "V-LINE",
        ["\22"] = "V-BLOCK",
        c = "COMMAND",
        R = "REPLACE",
        t = "TERMINAL",
    }

    return modes[mode] or mode:upper()
end

_G.nvim_mode_segment = function()
    return "%#ModeAccent# " ..
        _G.nvim_mode_label() ..
        " %#StatusLine#"
end

opt.statusline =
    "%{%v:lua.nvim_mode_segment()%} %f %m%= " ..
    "%{get(b:, 'gitsigns_head', '') !=# '' ? ' '.get(b:, 'gitsigns_head', '') : ''} "

