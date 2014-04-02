#!/bin/sh
mkdir -p ~/git/hachioji
cd ~/git/hachioji
git clone "https://github.com/blanketsheep/hachioji.git" ~/git/hachioji
roxterm --tab -e "subl --new-window --wait ~/git/hachioji"
roxterm --tab -e "gitg"
