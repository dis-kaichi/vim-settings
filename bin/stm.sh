#!/bin/sh

# ----------------------------------------
# ベースフォルダ
# ----------------------------------------
MYBASE=~/my/bin

# ----------------------------------------
# Linuxの起動後に手動で立ち上げるもの一覧
# ----------------------------------------
# キーバインド系の設定
#xmodmap ~/.Xmodmaprc;
#xmodmap $MYBASE/etc/.Xmodmaprc;
sh -c $MYBASE/change-control.sh

# ----------------------------------------
# ターミナル透過設定
# ----------------------------------------
sh -c $MYBASE/drive-guake.sh
## xcompmgrを利用したターミナルの透過
#xcompmgr -n &
#
## Guake起動後に透過率設定
## (*) byobu-screenを常時起動
#guake -e byobu-screen &
##sleep 1
##transset-df --no-regex -n guake 0.85

# ----------------------------------------
# ディスプレイ設定(外部ファイル)
# ----------------------------------------
sh -c $MYBASE/disp-clear.sh
sleep 3
sh -c $MYBASE/disp-v.sh
