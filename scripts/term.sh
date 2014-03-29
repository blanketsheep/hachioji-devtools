#!/bin/sh
mkdir -p ~/git/hachioji
cd ~/git/hachioji
git clone "https://github.com/blanketsheep/hachioji.git" .
roxterm --tab -e "subl --project ~/git/hachioji/"
roxterm --tab -e "gitg"
