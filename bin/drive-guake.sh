#!/bin/sh

#sleep 1
# ----------------------------------------
# ターミナル透過設定
# ----------------------------------------
# xcompmgrを利用したターミナルの透過
xcompmgr -n &

# Guake起動後に透過率設定
# (*) byobu-screenを常時起動
#guake -e byobu-screen &
# guakeのHooksに"byobu-screen"を移動
# -> byobu-screenはnvimで一部未対応なので、"byobu-tmux"へ変更
#    設定ファイルは ~/.tmux.conf
guake &
#sleep 1
#transset-df --no-regex -n guake 0.85
