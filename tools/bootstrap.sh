#!/usr/bin/env bash

warn ()
{
    printf '\033[0;31m%s\033[0m\n' "$1" >&2
}

die ()
{
    warn "$1"
    exit 1
}
printf '\033[0;34m%s\033[0m\n' "Thanks for installing ivim!"
                      
# check requriements
printf '\033[0;34m%s\033[0m\n' "Checking requriements for ivim..."
printf '\033[0;34m%s\033[0m\n' "Checking vim version..."
vim --version | grep 7.3 || die "Your vim's version is too low!\nPlease download higher version(7.3+) from http://www.vim.org/download.php"
printf '\033[0;34m%s\033[0m\n' "Checking if git exists..."
which git || die "No git installed!\nPlease install git from http://git-scm.com/downloads/"
printf '\033[0;34m%s\033[0m\n' "Check if ctags exists..."
which ctags || warn "No ctags installed!\nPlease install ctags form http://ctags.sourceforge.net/ after ivim intallation!"

rm -rf $HOME/.vim
rm $HOME/.vimrc

printf '\033[0;34m%s\033[0m\n' "Cloning ivim..."
rm -rf $HOME/ivim

git clone http://github.com/ZeusTheTrueGod/ivim.git $HOME/ivim
ln -s $HOME/ivim/vimrc $HOME/.vimrc

