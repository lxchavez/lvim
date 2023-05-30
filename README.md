# lvim

## Pre-Requisites

- `brew install neovim`

## Installation

- Install LunarVim as per the instructions: https://www.lunarvim.org/docs/installation
- Checkout this repo under ~/.lvim`
- Alias lvim config directory to checked out repo

```sh
cd ~/.config
rm -rf lvim
ln -s lvim ~/.lvim
```

## Commands

- Explore: `:Ex` (or use `space pv` remap)
	- Create file: `%`
- Source the file: `:so`
- Indent file: `=ap`
- Jump around the line: `Cmd+a`

## Remaps

Edit ``.

## Useful Stuff

- `<leader>pv`: explore
- `<leader>pf`: project finder - find files
- `<leader>ps`: project search - find files with Grep > prompt
- `<leader>u`: undotree
- `<leader>gs`: vim-fugitive: git status

- `<C-p>`: search for files only in a git repo
- `<C-e>`: Harpoon menu listing files
- `<C-t>`, `<C-h>`: Harpoon switch back and forth between files
- `<C-o>`, open NERDTree

- `gcc`: Comment out a line
- `gcap`: Comment out a paragraph   
- `gc` (in Visual mode): Comment out the selection 

Explanation on other configured remaps: https://www.youtube.com/watch?v=w7i4amO_zaE

## Plugin Manager

https://github.com/wbthomason/packer.nvim

`:PackerSync` to install plugins

### Python

```
brew install pipx

pipx install "python-lsp-server[all]"
```

### Other LSPs

Install others with Mason: `:Mason`, install with `i`
