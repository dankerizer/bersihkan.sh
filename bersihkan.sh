#!/usr/bin/env bash
BASEDIR=$(dirname "$0")
read -p "All node_modules in this directory  $BASEDIR will be delete ? (Y/n) :" -n 1 -r
echo

if [[ $REPLY =~ ^[Yy]$ ]]
then
find . -name 'node_modules' -type d -prune -print -exec rm -rf '{}' \;
fi
