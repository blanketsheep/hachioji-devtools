#!/bin/sh
mkdir -p ~/git/hachioji
cd ~/git/hachioji
git clone "https://github.com/blanketsheep/hachioji.git" ~/git/hachioji
roxterm --tab -n "Sublime Text" -e "subl --new-window --wait ~/git/hachioji"
roxterm --tab -n "gitg" -e "gitg"
roxterm --tab -n "Jekyll" -e "jekyll serve --watch --port 4000 --drafts --future"
roxterm --tab
