dotfilesの使い方
===

- とりあえずvimの設定だけ追加した
    - `.vimrc` : vim設定ファイル
    - `colors` : colorscheme用ディレクトリ


## 使い方

### 1. ファイル取ってくる

```shell
cd ~/
git clone https://github.com/yuki476/dotfiles.git
```

### 2. Pluginマネージャーを入れる
- [Vundle](https://github.com/VundleVim/Vundle.vim)を使用。

### 3. `dotfiles_link.sh`を実行

```bash
sh ~/dotfiles_link.sh
```

自動で必要ファイル/ディレクトリんの生成・リンク作成


-------------

###### [参考資料：dotfilesをGitHubで管理](http://bit.ly/2sfDSqb)




