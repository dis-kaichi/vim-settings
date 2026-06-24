#!/bin/bash

# nvim用の設定を.localにコピーします

case "$1" in
  c|clear)
    exec_mode=clear
    ;;
  s|safely)
    exec_mode=safely
    ;;
  *)
    exec_mode=other
    ;;
esac

target=~/.config/nvim

if [ ! -d "$target" ]; then
  mkdir "$target"
fi

if [ "$exec_mode" = "safely" ] && [ -f "$target/init.lua" ]; then
  while :; do
    printf "設定ファイルが存在します。コピーを続行しますか？ (y/n): "
    read answer

    case "$answer" in
        y|Y)
            echo "実行します..."
            break
            ;;
        n|N)
            echo "中止します"
            exit 0
            ;;
        *)
            echo "不正な入力です"
            ;;
    esac
  done
fi

# ホーム、もしくはscript内部での実行を許可する
if [ -d "../nvim" ]; then
  src_path="../nvim"
fi

if [ -d "../../nvim" ]; then
  src_path="../../nvim"
fi

if [ "$src_path" = "" ]; then
  echo 設定ファイルプロジェクトのホームで実行してください
  exit 1
fi

if [ "$exec_mode" = "clear" ]; then
  # 旧設定を強制的に削除してからコピーする
  rm -rf "$target"
  mkdir "$target"
fi

cp -r $src_path/* "$target"

echo コピーが完了しました
