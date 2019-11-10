#!/bin/sh
vim_root_path=`pwd`

cd ..
ln -s .vim/vimrc .vimrc
ln -s .vim/gvimrc .gvimrc

# xmledit
cd $vim_root_path/bundle/xmledit/ftplugin/
ln -s xml.vim html.vim
ln -s xml.vim xhtml.vim

# YouCompleteMe
cd $vim_root_path/bundle/YouCompleteMe
git submodule update --init --recursive
./install.py
./install.py --clang-completer
./install.py --gocode-completer
