#!/bin/sh
cd "/vagrant"
export DISPLAY="${SSH_CLIENT%% *}:0"
export LANG=ja_JP.UTF-8
roxterm -e "sh /vagrant/scripts/term.sh"
exit