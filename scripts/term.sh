#!/bin/sh
mkdir -p ~/git/hachioji
cd ~/git/hachioji
git clone "https://github.com/blanketsheep/hachioji.git" ~/git/hachioji
roxterm --tab -e "subl --new-window --wait ~/git/hachioji" -T "Sublime Text"
roxterm --tab -e "gitg" -T "gitg"
roxterm --tab -e "jekyll serve --watch --port 4000 --drafts --future" -T "Jekyll"
roxterm --tab
