cd /d %~dp0
vagrant up
vagrant ssh -c "/vagrant/scripts/start_guest.sh"