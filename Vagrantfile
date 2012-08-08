# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ubuntu-11.10-64"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "http://timhuegdon.com/vagrant-boxes/ubuntu-11.10.box"

  # config.vm.network :hostonly, "33.33.33.10"

  # Forward a port from the guest to the host, which allows for outside
  # computers to access the VM, whereas host only networking does not.

  config.vm.forward_port 5432, 5432 # postgresql
  config.vm.forward_port 4000, 4000 # phppgadmin
  config.vm.forward_port 27017, 27017 # mongodb
  config.vm.forward_port 5672, 5672 # rabbitmq
  config.vm.forward_port 55672, 55672 # rabbitmq management web ( http://localhost:55672/mgmt )


  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.roles_path = "roles"
    chef.add_role "postgresql"
		chef.add_recipe "mongodb"
		chef.add_recipe "rabbitmq"
		chef.add_recipe "rabbitmq-management"
  end


end
