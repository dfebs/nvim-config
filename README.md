# Neovim config: dfebs
This config is currenly under heavy construction. This mostly exists here so I have it and I can edit it anywhere.

## Setup
```
cd ~/.config/nvim
git clone this repo
```

## Todo
- [ ] Find the equivalent for javascript debug terminal. See article [here](https://www.darricheng.com/posts/setting-up-nodejs-debugging-in-neovim/) and video [here](https://www.youtube.com/watch?v=CVCBHHFXWNE&t=438s)
- [ ] Get snippets working for erb files
- [ ] Figure out how to have neovim auto include end curly brackets in JS
- [ ] See if there's plugins for handling git conflicts
- [ ] Figure out how to get telescope to NOT ignore dotfiles but still ignore gitignore stuff
- [ ] Worth eventually doing the `:Tutor` thing. Might learn some extra stuff.
- [ ] Look into plugins that do code collapsing
- [ ] Spellchecking
- [ ] Undo history
- [ ] (non-neovim) Look into the ranger command line tool
- [ ] Make html.erb files more accessible with snippets and html lsp
- [ ] Figure out why pasting also includes an extra newline

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
