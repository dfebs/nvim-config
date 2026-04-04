# Neovim config: dfebs
This config is currenly under heavy construction. This mostly exists here so I have it and I can edit it anywhere.

## Setup
```
cd ~/.config/nvim
git clone this repo
```

## Todo
- [ ] [ERB] Figure out why tab misbehaves on newlines
- [ ] [ERB] Make html.erb files more accessible with snippets and html lsp
- [ ] Worth eventually doing the `:Tutor` thing. Might learn some extra stuff
- [ ] Look into code collapsing
- [ ] Make a plugin for special copy and paste: Basically provide git repo, relative path, line numbers, and then code surrounded by backticks. Made for code sharing.
- [ ] Have a way to quickly reset a line in a file without having to switch over to lazygit. (This part of the gitsigns actually might do this: [woah](https://github.com/lewis6991/gitsigns.nvim?tab=readme-ov-file#-keymaps))
- [ ] Figure out how to get telescope to ignore dotfiles but still ignore gitignore stuff
- [ ] Fix issue where telescope is slow when it runs into a file with huge lines (e.g. minified/obfuscated files)
- [ ] Find the equivalent for javascript debug terminal. See article [here](https://www.darricheng.com/posts/setting-up-nodejs-debugging-in-neovim/) and video [here](https://www.youtube.com/watch?v=CVCBHHFXWNE&t=438s)

## Completed todo items
- [x] Learn how to use [luasnip](https://github.com/L3MON4D3/LuaSnip) to add snippets 
- [x] Figure out how to have neovim auto include 'end' in ruby when defining functions
- [x] Have telescope ignore stuff like node_modules and show hidden files. This goes for file search and livegrep
- [x] Figure out how to comment out selections
- [x] Figure out how to tab selections to indent everything in the selection
- [x] Look into bufferline and lualine
- [x] Figure out the javascript/nodejs lsp + eslint/prettier situation
- [x] Fix issue where copy/paste doesn't work on mac because I have it currently designed for wsl
- [x] (non-neovim) have tmux use ctrl+a instead of ctrl+b
- [x] (non-neovim) Look into the lazygit tool
- [x] Get snippets working for erb files
- [x] (non-neovim) Look into the ranger command line tool
- [x] Spellchecking
- [x] [JS] Figure out how to have neovim auto include end curly brackets
- [x] [JS] Figure out how to have autocomplete suggestions for variables that are in the same file
