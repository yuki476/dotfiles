#!/bin/sh
# 設定用ディレクトリ作成
mkdir ~/.vim
mkdir ~/.vim/undo

# シンボリックリンク作成
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/colors ~/.vim/colors
ln -sf ~/dotfiles/cheatsheet.md ~/.vim/cheatseet.md

