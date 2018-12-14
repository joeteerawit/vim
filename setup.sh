#!/bin/bash

set -eu

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cat .vimrc > ~/.vimrc
vim +PluginInstall +qall

cp -R syntax ~/.vim
cp filetype.vim  ~/.vim
