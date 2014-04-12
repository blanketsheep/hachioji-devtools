# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "chef/ubuntu-13.10"
  #config.vm.box = "parallels/ubuntu-13.10"
  config.omnibus.chef_version = :latest
  
  config.vm.network "forwarded_port", guest: 4000, host: 4000
  
  config.ssh.forward_agent = true
  config.ssh.forward_x11 = true
  #config.ssh.username = "vagrant"
  #config.ssh.password = "vagrant"
  #config.ssh.port = 2222
  
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "off"]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "off"]
    #vb.customize ["modifyvm", :id, "--memory", 1024]
  end
  
  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = ["./chef-repo/cookbooks","./chef-repo/site-cookbooks"]
    #chef.add_recipe "apt"
    chef.add_recipe "hachioji-devtools"
    chef.json = {}
    chef.verbose_logging = true
  end
  
end