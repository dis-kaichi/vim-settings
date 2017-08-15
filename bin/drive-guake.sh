#!/bin/sh

#sleep 1
# ----------------------------------------
# ターミナル透過設定
# ----------------------------------------
# xcompmgrを利用したターミナルの透過
xcompmgr -n &

# Guake起動後に透過率設定
# (*) byobu-screenを常時起動
guake -e byobu-screen &
#sleep 1
#transset-df --no-regex -n guake 0.85
