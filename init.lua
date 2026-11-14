
-- ==========================================
-- ATHLAS NVIM
-- Personal IDE Configuration
-- ==========================================

-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

-- Core configuration
require("config.options")
require("config.keymaps")
require("config.theme")

-- Plugin manager
require("lazy").setup({
    spec = {
        { import = "plugins" },
    },
    checker = {
        enabled = false,
    },
})

