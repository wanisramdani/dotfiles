this script should install awesomeWM and all other needed libs/apps
install git, vim, nvim, stow, chrome, 
copy rofi to config

# Wallpaper 
sudo apt install variety feh

# Alacritty X Starship
https://starship.rs/

# Neovim plugins

If you install nvim through `apt` you get v0.6 this config works with v0.8+ (0.9.1 currently)
 
```
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
```
 
you may get the following error `AppImages require FUSE to run.` just install `FUSE`
 
```
sudo apt-get install fuse libfuse2
```

- [Packer](https://github.com/wbthomason/packer.nvim)
Install packer first 

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

- [Telescope](https://github.com/nvim-telescope/telescope.nvim)

- [Tokyonight](https://github.com/folke/tokyonight.nvim) 

- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) 

- [Barbar](https://github.com/romgrk/barbar.nvim)

- [Scrollbar](https://github.com/petertriho/nvim-scrollbar)

- [LSP](https://github.com/VonHeikemen/lsp-zero.nvim)

