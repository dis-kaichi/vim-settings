#!/bin/bash

#cat $1 | wisp > ${1%.wisp}.js
cat $1 | wisp > $2
echo "Converted $2"
