#!/bin/sh

WARNING="You need input us/jp"

if [ -z "$@" ]; then
  echo "No args."
  echo $WARNING
  exit
fi

if [ "us" = "$1" ]; then
  setxkbmap us
  echo "Set us key board."
elif [ "jp" = "$1" ]; then
  setxkbmap jp -model jp106
  echo "Set jp key board."
else
  echo "Invalid args."
  echo $WARNING
fi

# キーボードの設定後に実行しないとダメ
xmodmap ~/.Xmodmaprc;
