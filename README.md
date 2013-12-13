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

To update all submodules, e.g. vim plugins, run the following command once a month or so:

    cd ~/dotfiles
    git submodule foreach git pull origin master

## bash

Whether you already have bash-related configuration or not, add the following to your `~/.bashrc` file.

    # source extra configuration files
    for f in $(ls ~/dotfiles/bash/*); do
        source $f
    done

## desktop

I use Openbox as window manager, and a host of other programs to supply my preferred GUI experience. Using your package manager, ensure that you have the following programs installed (the names of the programs are given as the packages are called in Ubuntu, to allow for easy copying and pasting to an apt-get install command):

    openbox obconf feh firefox xfce4-terminal thunar tint2 skippy-xd conky \
    pal volumeicon-alsa xscreensaver gnome-keyring gnupg-agent mutt menu   \
    vim-gtk w3m xdg-utils openssh-client htop xinit ttf-ubuntu-font-family \
    gmrun ack-grep tree ttf-dejavu fortune

Installing these packages on a pure Ubuntu server install (or some other minimal Ubuntu install, such as one from the network installer) will pull in all of xorg as well, so the environment you end up with will be usable from the start. You may also want to install e.g. `xdm` to have your computer boot into graphical mode.

Note that, at least in Ubuntu 12.04, one needs to add a PPA to make skippy-xd installable.

In addition, my preferred web browser is `firefox` and my preferred mail client is `mutt`. Both can be made to use vim as text editor, mutt by configuration file, and firefox by installing the "It's All Text!" extension.

Set up your symlinks accordingly:

    ln -s ~/dotfiles/desktop/openbox ~/.config/
    ln -s ~/dotfiles/desktop/tint2 ~/.config/
    ln -s ~/dotfiles/desktop/skippy-xd ~/.config/
    ln -s ~/dotfiles/desktop/conky/conkyrc ~/.conkyrc
    mkdir ~/.mutt
    ln -s ~/dotfiles/mutt/muttrc-shared ~/.mutt

...and your super nerdy desktop should be ready for you. On a fresh Ubuntu 12.04 install, you will see that this desktop uses about 100 megabytes of memory when loaded, and it is about as fast and lean as a Linux desktop gets.
