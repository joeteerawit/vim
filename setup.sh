#!/bin/bash

set -eu

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cat .vimrc > ~/.vimrc

# Config Nginx syntax
mkdir -p ~/.vim/syntax
cat nginx.vim > ~/.vim/syntax/nginx.vim
cat > ~/.vim/filetype.vim <<EOF
au BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/*,*.conf if &ft == '' | setfiletype nginx | endif
EOF

vim +PluginInstall +qall
