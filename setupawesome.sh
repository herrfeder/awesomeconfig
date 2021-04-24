#!/bin/bash

currdir="$(pwd)"
targetdir="$(dirname "$0")"

cd "$targetdir"

git clone https://github.com/deficient/keyboard-layout-indicator.git
git clone https://github.com/deficient/volume-control.git
git clone https://github.com/deficient/battery-widget.git
git clone https://github.com/deficient/vim-notes.git

git clone https://github.com/streetturtle/awesome-wm-widgets.git
git clone https://github.com/rxi/json.lua.git jsonlua
cp jsonlua/json.lua json.lua

cd "$currdir"

if [ ! -d "~/.config/awesome" ]; then
  mkdir -p ~/.config/awesome
fi

cp -r "$targetdir"/* ~/.config/awesome

