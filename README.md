# NeoVim - Personal Config
Thats my personal config for NeoVim, focusing on turning it an complete IDE. This config is totaly based and used in ArchLinux.

## Tree
```
.
├── init.lua
├── lazy-lock.json
├── lua
│   ├── config
│   │   ├── keymaps.lua
│   │   ├── options.lua
│   │   └── theme.lua
│   └── plugins
│       ├── blink.lua
│       ├── emmet.lua
│       ├── gitsigns.lua
│       ├── lsp.lua
│       ├── neo-tree.lua
│       └── telescope.lua
└── README.md
```

## Usage

Make sure you dont have any other nvim config in your machine:
```
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim
```

Then, clone the repo in the `.config` dir:
`git clone git@github.com:elderluiz-dev/nvim.git`

Finaly, just run it once and the Lazy plugin will download all the other plugins and sync auto.
`nvim`
