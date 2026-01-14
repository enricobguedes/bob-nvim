# bob-nvim

[image](resources/bob.svg)

**bob-nvim** is a plugin meant to be used with BOB from IBM.


## ✨ Features

- 📦 Wrapper for BOB shell
- 🔌 Seamless integration
- 🛠️ No need to manually compile
- 📁 Configurable
- 💻 Dev options and patterns to add or change search queries. 

## ⚡️ Requirements

- Neovim >= **0.8.0** (needs to be built with **LuaJIT**)
- bob-shell
- Folke/trouble.nvim

## 🚀 Getting Started

1. Import bob-nvim plugin into your lazy plugins.

* bob.lua
```
return {
  { "enricobguedes/bob-nvim" },
}
```

2. Add the following keybinds to your lazy.lua file:

```

bob = require("bob")

vim.keymap.set("n", "<space>tb", bob.bobSearch, { desc = "Bob: open interactive interface" })
vim.keymap.set("v", "<space>tw", function() bob.bobSearch(vim.fn.expand("<cword>")) return nil end, { desc = "Bob: search cursor word" })
vim.keymap.set("v", "<space>tl", function() bob.bobSearch(vim.fn.getline("."))      return nil end, { desc = "Bob: search line" })
vim.keymap.set("n", "<space>tf", function() bob.bobSearch(vim.fn.expand("%:t"))     return nil end, { desc = "Bob: search file" })
```
 

3. Make sure you have exported your Bob shell apikey
4. You are good to go! 
