#!/bin/bash

dir=`dirname $0`

# パッケージインストール
if type "brew" > /dev/null 2>&1; then
  sh $dir/.bin/brew/install.sh
elif type "apt" > /dev/null 2>&1; then
  sh $dir/.bin/apt/install.sh
fi

# 設定ファイルの配置
sh $dir/.bin/link.sh
