#!/bin/sh
cd "/vagrant"
export DISPLAY="${SSH_CLIENT%% *}:0"
export LANG=ja_JP.UTF-8
ibus-daemon -d -x
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
roxterm -e "sh /vagrant/scripts/term.sh"
exit