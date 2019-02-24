#!/bin/bash
# 設定用ディレクトリ作成
mkdir ~/.vim
mkdir ~/.vim/undo
mkdir ~/.fonts

# シンボリックリンク作成
ln -sf ~/dotfiles/.vimrc ~/
ln -sf ~/dotfiles/cheatsheet.md ~/.vim/cheatsheet.md
ln -sf ~/dotfiles/colors/ ~/.vim/colors

# フォントを追加
cp ~/dotfiles/fonts/*.ttf ~/.fonts
fc-cache -frv

