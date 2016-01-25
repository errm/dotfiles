# dotfiles

Hi there, these are my dotfiles, you may use them if you wish.

I try to keep everything as simple as possible in here,
there is lots of fancy stuff I could do, but I stick to a
few things that are usefull.

# Requirements

* OSX, for the hombrew installation stuff etc.
* bash

# What is in here

* [Antigen](https://github.com/zsh-users/antigen) - A plugin manager for zsh
  * git, rbenv, bundler from oh-my-zsh
  * [vundle.zsh](https://github.com/errm/vundle.zsh) - my zsh wrapper to make vundler nicer
  * see `.zshrc`
* [Vundler](https://github.com/VundleVim/Vundle.vim) - A plugin manager for vim
  * see `.vim/bundles.vim`


# Instalation

```
git clone https://github.com/errm/dotfiles
dotfiles/install.sh
```

The script symlinks the dotfiles I care about, and uses homebrew
to install the stuff I need. It is probibly broken, but I try and fix
it everytime I need to install a new machine every few years.

But honestly don't use this, its just for me, feel free to copy as you wish.
