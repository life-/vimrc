#!/bin/sh
set -e

cd ~/.vim_runtime

echo "Installing vundle"
plugin_dir="${HOME}/.vim_runtime/my_plugins"

if [ ! -d ${plugin_dir}/Vundle.vim ]; then
  eval git clone https://github.com/gmarik/Vundle.vim.git ${plugin_dir}/Vundle.vim
  eval sed -i "s#.vim/bundle#.vim_runtime/my_plugins#g" ${plugin_dir}/Vundle.vim/autoload/vundle.vim
fi

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim
source ~/.vim_runtime/vimrcs/bundles.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
