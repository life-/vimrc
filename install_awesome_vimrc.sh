#!/bin/sh
set -e

cd ~/.vim_runtime

echo "Installing vim-plug"
autoload_path="autoload"
if [ ! -f "$autoload_path/plug.vim" ]; then
    exec curl -fLo ${autoload_path}/plug.vim --create-dirs \
            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim
source ~/.vim_runtime/vimrcs/plug.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
