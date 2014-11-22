#######
Vagrant
#######

In :doc:`Phase I <../development_tools/index>` we learned how to:

    - Setup individual virtual machines
    - Setup an environment with the software packages we needed
    - Configure and network our machines
    - Configure a basic stack

And we did it all **manually** and **individually**!

**Vagrant** is a tool that changes all of that by providing us with 
a way **automate** the entire process using a single file that we can
share along with the project code.

Vagrant helps you create, provision, share and destroy virtual machines. Vagrant can interact with different hypervisors e.g. VirtualBox, VMware ...etc. Instead of you going and writing scripts to interact with your hypervisor softwre of choice, it does it for you. It has simple commands to launch and create VM. In this course, we will touch the surface of what it can do.

Prerequisite
============
You need to install VirtualBox or any hypervisor you wish to use. The following instruction will focus on VirtualBox since it's our presonal preference. After that Download and install `Vagrant <https://www.vagrantup.com/>`_. After you done the previous two steps move to the next section.

**Init**
========
To initialize the vagrant you have to run the following command ``$vagrant init``, and you should get the following out put.

.. code::

	A `Vagrantfile` has been placed in this directory. You are now
	ready to `vagrant up` your first virtual environment! Please read
	the comments in the Vagrantfile as well as documentation on
	`vagrantup.com` for more information on using Vagrant.

Now, you should have a new file created in the same directory called **Vagrantfile**. This is a ruby file and it has the initial settup for the VM. Take a moment and open the file and be familair of the different configuration that you can do with your VM. If you open the file you should see the following.

.. code-block:: ruby

	# -*- mode: ruby -*-
	# vi: set ft=ruby :

	# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
	VAGRANTFILE_API_VERSION = "2"

	Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	  # All Vagrant configuration is done here. The most common configuration
	  # options are documented and commented below. For a complete reference,
	  # please see the online documentation at vagrantup.com.

	  # Every Vagrant virtual environment requires a box to build off of.
	  config.vm.box = "base"

	  # Disable automatic box update checking. If you disable this, then
	  # boxes will only be checked for updates when the user runs
	  # `vagrant box outdated`. This is not recommended.
	  # config.vm.box_check_update = false

	  # Create a forwarded port mapping which allows access to a specific port
	  # within the machine from a port on the host machine. In the example below,
	  # accessing "localhost:8080" will access port 80 on the guest machine.
	  # config.vm.network "forwarded_port", guest: 80, host: 8080

	  # Create a private network, which allows host-only access to the machine
	  # using a specific IP.
	  # config.vm.network "private_network", ip: "192.168.33.10"

	  # Create a public network, which generally matched to bridged network.
	  # Bridged networks make the machine appear as another physical device on
	  # your network.
	  # config.vm.network "public_network"

	  # If true, then any SSH connections made will enable agent forwarding.
	  # Default value: false
	  # config.ssh.forward_agent = true

	  # Share an additional folder to the guest VM. The first argument is
	  # the path on the host to the actual folder. The second argument is
	  # the path on the guest to mount the folder. And the optional third
	  # argument is a set of non-required options.
	  # config.vm.synced_folder "../data", "/vagrant_data"

	  # Provider-specific configuration so you can fine-tune various
	  # backing providers for Vagrant. These expose provider-specific options.
	  # Example for VirtualBox:
	  #
	  # config.vm.provider "virtualbox" do |vb|
	  #   # Don't boot with headless mode
	  #   vb.gui = true
	  #
	  #   # Use VBoxManage to customize the VM. For example to change memory:
	  #   vb.customize ["modifyvm", :id, "--memory", "1024"]
	  # end
	  #
	  # View the documentation for the provider you're using for more
	  # information on available options.

	  # Enable provisioning with CFEngine. CFEngine Community packages are
	  # automatically installed. For example, configure the host as a
	  # policy server and optionally a policy file to run:
	  #
	  # config.vm.provision "cfengine" do |cf|
	  #   cf.am_policy_hub = true
	  #   # cf.run_file = "motd.cf"
	  # end
	  #
	  # You can also configure and bootstrap a client to an existing
	  # policy server:
	  #
	  # config.vm.provision "cfengine" do |cf|
	  #   cf.policy_server_address = "10.0.2.15"
	  # end

	  # Enable provisioning with Puppet stand alone.  Puppet manifests
	  # are contained in a directory path relative to this Vagrantfile.
	  # You will need to create the manifests directory and a manifest in
	  # the file default.pp in the manifests_path directory.
	  #
	  # config.vm.provision "puppet" do |puppet|
	  #   puppet.manifests_path = "manifests"
	  #   puppet.manifest_file  = "site.pp"
	  # end

	  # Enable provisioning with chef solo, specifying a cookbooks path, roles
	  # path, and data_bags path (all relative to this Vagrantfile), and adding
	  # some recipes and/or roles.
	  #
	  # config.vm.provision "chef_solo" do |chef|
	  #   chef.cookbooks_path = "../my-recipes/cookbooks"
	  #   chef.roles_path = "../my-recipes/roles"
	  #   chef.data_bags_path = "../my-recipes/data_bags"
	  #   chef.add_recipe "mysql"
	  #   chef.add_role "web"
	  #
	  #   # You may also specify custom JSON attributes:
	  #   chef.json = { mysql_password: "foo" }
	  # end

	  # Enable provisioning with chef server, specifying the chef server URL,
	  # and the path to the validation key (relative to this Vagrantfile).
	  #
	  # The Opscode Platform uses HTTPS. Substitute your organization for
	  # ORGNAME in the URL and validation key.
	  #
	  # If you have your own Chef Server, use the appropriate URL, which may be
	  # HTTP instead of HTTPS depending on your configuration. Also change the
	  # validation key to validation.pem.
	  #
	  # config.vm.provision "chef_client" do |chef|
	  #   chef.chef_server_url = "https://api.opscode.com/organizations/ORGNAME"
	  #   chef.validation_key_path = "ORGNAME-validator.pem"
	  # end
	  #
	  # If you're using the Opscode platform, your validator client is
	  # ORGNAME-validator, replacing ORGNAME with your organization name.
	  #
	  # If you have your own Chef Server, the default validation client name is
	  # chef-validator, unless you changed the configuration.
	  #
	  #   chef.validation_client_name = "ORGNAME-validator"
	end

After making your adjustments on the file move the next section.

**Up**
======
The ``VagrantFile`` has all the configuration for the VM, and once you fnish configuring run the following command ``$vagrant up``. The command will aply the configuration to your VM and instantiate the machine. The output of the command should look like the following.

.. code::

	Bringing machine 'default' up with 'virtualbox' provider...
	==> default: Importing base box 'base.box'...
	==> default: Matching MAC address for NAT networking...
	==> default: Setting the name of the VM: test_default_1416676086074_86409
	==> default: Clearing any previously set forwarded ports...
	==> default: Clearing any previously set network interfaces...
	==> default: Preparing network interfaces based on configuration...
	    default: Adapter 1: nat
	==> default: Forwarding ports...
	    default: 80 => 8080 (adapter 1)
	    default: 22 => 2222 (adapter 1)
	==> default: Booting VM...
	==> default: Waiting for machine to boot. This may take a few minutes...
	    default: SSH address: 127.0.0.1:2222
	    default: SSH username: vagrant
	    default: SSH auth method: private key
	    default: Warning: Connection timeout. Retrying...
	    default: Warning: Remote connection disconnect. Retrying...
	==> default: Machine booted and ready!
	==> default: Checking for guest additions in VM...
	==> default: Mounting shared folders...
	    default: /vagrant => /private/tmp/test

After completing the command, you should have a VM running in the background. The VM is running without GUI, and you should interact with it using vagrant commands. To check if there is a machine or not open up VirtualBox GUI and you should see a machine running.

**SSH**
=======
``$vagrant ssh`` is the command that you should use in order to log in to the machine and run your commands. After running the command, you will be logged in into the machine.

**Provision**
=============
Provision is the way to set up your development environment. You can put your configuration inside **VagrantFile** and let **Vagrant** run and configure your machine the way you like. There are multiple options to accomplish that you could use Puppet, Chef, Ansible or Shell. In this section will talk about how you can provision using shell commands and then we will talk about Ansible provisioning later in this course. Follow the next instructions to provision using shell

#. Open VagrantFile
#. Append ``config.vm.provision "shell", path: "myscript.sh"``
#. Create a file called **myscript.sh**
#. Copy the following into the file

.. code-block:: bash

	#!/bin/sh
	set -e

	# installing Nginx
	sudo apt-get install -y --force-yes nginx

	# starting nginx
	sudo service nginx start

.. note:: The script will install and start nginx with the default configuration. It should listen to port 80 on the guest machine and you should ``port-forward`` that port to a port on the host machine by changing the configuration in the VagrantFile.


Tutorial
========

We will be following the `official vagrant tutorial <https://docs.vagrantup.com/v2/getting-started/index.html>`_.

Exercise
========

Let's create a Vagrantfile to set up the box we will need for our
toy project. 

.. todo:: What are the provisioning requirments for our box?

