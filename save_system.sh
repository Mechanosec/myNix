#!/usr/bin/env bash

current_datetime=$(date +"%Y-%m-%d %H:%M:%S")

cp -r /etc/nixos/ ~/.config/home-manager/

git pull
git add .
git commit -m "new mind ($current_datetime)"
git push

rm -rf ~/.config/home-manager/nixos
