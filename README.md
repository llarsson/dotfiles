# What is this?
These are the dotfiles that I always want present on any machines I work with, so I have put them here on GitHub. If you also find them useful, either use them as-is or fork the project and make your own changes to them!

# Installation instructions

1. Install git
2. Run the following in a terminal `cd ~ && git clone https://github.com/llarsson/dotfiles.git`

You now have the dotfiles directory/git repository in your home folder.

## vim

Assuming you have no other vim-related configuration, you can simply run the following commands:

    ln -s ~/dotfiles/vim/ ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    cd ~/dotfiles/
    git submodule update --init

## bash

Whether you already have bash-related configuration or not, add the following to your `~/.bashrc` file.

    # source extra configuration files
    for f in $(ls ~/dotfiles/bash/*); do
        source $f
    done

## desktop

    ln -s ~/dotfiles/desktop/Xmodmap ~/.Xmodmap
