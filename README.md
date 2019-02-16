dotfilesの使い方
===

## とりあえずvimの設定だけ追加した
- .vimrc
- colors

#### 対象ファイルを`~/dotflies`に移して使う
`dotfiles_link.sh`で自動で必要ファイル/ディレクトリ作成

#### 使うとき

1. ファイル取ってくる

```shell
cd ~/
git clone https://github.com/yuki476/dotfiles.git
sh dotfiles_link.sh
```

2. Pluginマネージャーを入れる
- [Vundle](https://github.com/VundleVim/Vundle.vim)を使用。

3. `dotfiles_link.sh`を実行


###### [参考資料：dotfilesをGitHubで管理](http://bit.ly/2sfDSqb)







