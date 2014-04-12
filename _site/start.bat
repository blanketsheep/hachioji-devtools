cd /d %~dp0
vagrant up
start "" config.xlaunch
vagrant ssh -c "/vagrant/scripts/start_guest.sh"
pause
exit