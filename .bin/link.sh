#!/bin/bash

dir=`dirname $0`

backup_dir=~/.dotbackup

mkdir -p $backup_dir

# 設定ファイルが存在する場合はバックアップを取り、
# シンボリックリンクをホームディレクトリ直下に作成する
while read -r f; do

  if [ -e ~/$f ]; then mv ~/$f $backup_dir ; fi
  ln -svf `readlink -f $f` ~/

done < <(find $dir/../files -mindepth 1 -maxdepth 1)