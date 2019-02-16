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

```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
追加設定は`.vimrc`に記載済みなのでcloneだけでOK

### 3. `dotfiles_link.sh`を実行

```bash
sh ~/dotfiles_link.sh
```

自動で必要ファイル/ディレクトリの生成・リンク作成

### 4. プラグインをインストール
Vim起動後に`:PluginInstall`を実行

-------------

###### [参考資料：dotfilesをGitHubで管理](http://bit.ly/2sfDSqb)




