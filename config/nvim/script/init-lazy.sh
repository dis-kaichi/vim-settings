#!/bin/bash

target_dir=~/.local/share/nvim/lazy

# "[[ ]] ||"はガード文
# DL済みかチェック
[[ ! -d "$target_dir" ]] || { echo 既に初期化済みです ; exit 1; }

git clone https://github.com/folke/lazy.nvim "$target_dir"
