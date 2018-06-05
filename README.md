dotfilesの使い方
===

## とりあえずvimの設定だけ追加した
- .vimrc
- colors

#### 対象ファイルを`~/dotflies`に移して使う
`dotfilesLink.sh`はシンボリックリンク作成スクリプト

#### 使うとき

```shell
mkdir ~/dotfiles
cd ~/
git clone https://github.com/yuki476/dotfiles.git
sh dotfilesLink.sh
```

#### 設定ファイルを更新した時
 1. 新しいファイルを追加した時
 ```shell
cd ~/dotfiles
git add .
git commit -m <更新メッセージ>
git push origin master 
```

2. 更新のみ
```shell
git commit -a -m <更新メッセージ>
git push origin master
```

#### 右クリックで貼り付けできなくなった
マウスで選択して y でコピペ(ヤンク) pでペースト



###### 参考資料：dotfilesをGitHubで管理 http://bit.ly/2sfDSqb





## 前提条件 vim8+deinの環境
vimを立ち上げてエラーが出る場合は以下の手順を実行

### 1. vim8へupdate
vim8にupdateしてdeinのインストールまでした状態のものなので
以下の手順で環境を合わせておくこと。

```shell
curl -L https://copr.fedorainfracloud.org/coprs/mcepl/vim8/repo/epel-7/mcepl-vim8-epel-7.repo -o /etc/yum.repos.d/mcepl-vim8-epel-7 r
epo
yum update vim*
```
### 2. deinをインストール
ホームディレクトリに`.cache/dein`を作り、deinをインストール

```shell
mkdir ~/.cache/dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
```
スクリプトを実行すると以下のような結果が出てくるので"dein Scripts"の部分を`.vimrc`の
はじめにコピペして使う。

```shell
# sh ./installer.sh ~/.cache/dein
Install to "/root/.cache/dein/repos/github.com/Shougo/dein.vim"...
"/root/.cache/dein/repos/github.com/Shougo/dein.vim" already exists!

git は /bin/git です

Please add the following settings for dein to the top of your vimrc (Vim) or init.vim (NeoVim) file:


"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/root/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/root/.cache/dein')
  call dein#begin('/root/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/root/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------


Done.
Complete setup dein!
```

コピペ後、vimを立ち上げて`:call dein#install()`でインストールOK


