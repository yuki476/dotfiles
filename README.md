dotfilesの使い方
===

## とりあえずvimの設定だけ追加した
- .vimrc
- colors

##### 対象ファイルを`~/dotflies`に移して使う
`dotfilesLink.sh`はシンボリックリンク作成スクリプト


#### 使うとき

```shell
cd ~/
git clone https://github.com/yuki476/dotfiles.git
sh dotfilesLink.sh
```

#### 設定ファイルを更新した時
 1. 新しいファイルを追加した時
 ```shell
cd ~/dotfiles
git add .
git commit -m <追加したファイル>
git push origin master 
```

2. 更新のみ
```shell
git commit -a -m <更新したファイル>
git push origin master
```




###### 参考資料：dotfilesをGitHubで管理 http://bit.ly/2sfDSqb



