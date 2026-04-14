# bob-nvim

![image](https://github.com/enricobguedes/bob-nvim/blob/main/resources/bob.svg)

**bob-nvim** is a plugin meant to be used with Bob from IBM.


## ✨ Features

- 📦 Wrapper for Bob shell
- 🔌 Seamless integration
- 🛠️ No need to manually compile
- 📁 Configurable
- 💻 Dev options and patterns to add or change search queries. 

## ⚡️ Requirements

- Neovim >= **0.11.2** (needs to be built with **LuaJIT**)
- LazyVim
- bob-shell

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

## ⚒️ USAGE 

If you have applied the keys above, then you should be able to access Bob by using the key combination `space` -> `t` ->  `b`. This will open the bob interactive interface.

For using within the editing file, you can leave your cursor above the line/word that you want to search and whilst in view mode (standard), hit `space` -> `t` -> `w` (for word) or `l` (for line).
