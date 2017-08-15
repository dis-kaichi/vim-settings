#!/bin/bash

# Bluetooth Mouse
address="20:15:10:15:10:C2"
while (sleep 1)
do
  connected=`sudo hidd --show` > /dev/null
  if [[ ! $connected =~ .*${address}.* ]]; then
    sudo hidd --connect ${address} > /dev/null 2>&1
  fi
done
