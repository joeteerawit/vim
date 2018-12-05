#!/bin/bash

set -eu

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cat .vimrc > ~/.vimrc

vim +PluginInstall +qall
