### Create vimrc

Mac
```
cp dotfiles/vim/.vimrc ~/
```
Linux
```
cp dotfiles/vim/.vimrc_linux ~/.vimrc
```

### Installation

1. Install fzf

**Linux:** package already installed? (at least on manjaro)

2. Install Ag

**Linux:**
```
sudo pacman -S the_silver_searcher
```

3. Install Vundle

Follow [Vundle Instructions](https://github.com/VundleVim/Vundle.vim)

Run Vundle Plugins install
```
vim +PluginInstall +qall
```

4. Install YouCompleteMe

**Linux:**
Install `sudo pacman -S libnghttp2` (or it will fail)


Use AUR package https://aur.archlinux.org/packages/vim-youcompleteme-git/


5.  Vundle plugins
```
vim
:PluginInstall
```

6. Colors: Solarized Dark 8

Follow https://github.com/lifepillar/vim-solarized8

Tldr;
> if `echo has('packages')` (on vim) print 1, then
```
git clone https://github.com/lifepillar/vim-solarized8.git \
    ~/.vim/pack/themes/opt/solarized8
```


