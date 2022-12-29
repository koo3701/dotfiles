#!/bin/bash

dir=`dirname $0`

backup_dir=~/.dotbackup

mkdir -p $backup_dir

# 設定ファイルが存在する場合はバックアップを取り、
# シンボリックリンクをホームディレクトリ直下に作成する
for file in  $( ls -ap $dir/.. | grep -E "^\..+[^/]$" ); do
  if [ -e ~/$file ]; then mv ~/$file $backup_dir ; fi
  ln -svf `readlink -f $file` ~/
done