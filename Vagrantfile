# -*- mode: ruby -*-
# vi: set ft=ruby :

# UI_URL = "https://launchpad.net/plone/5.0/5.0.5/+download/Plone-5.0.5-UnifiedInstaller.tgz"
# UI_OPTIONS = "standalone --password=admin"

Vagrant.configure("2") do |config|
    config.vm.box = "box-cutter/fedora22"
# add by ys
# additions version when booting this machine
    config.vbguest.auto_update = true

# do NOT download the iso file from a webserver
    config.vbguest.no_remote = true
    config.ssh.username = "vagrant"
    config.ssh.password = "vagrant"
    config.vm.network :forwarded_port, guest: 8080, host: 8080
    config.vm.network :forwarded_port, guest: 8089, host: 8089
    config.vm.network :forwarded_port, guest: 80, host: 1080

    # config.ssh.forward_agent = true

    config.vm.provider "virtualbox" do |vb|
        vb.customize ["modifyvm", :id, "--memory", "2048"]
        vb.customize ["modifyvm", :id, "--name", "EMCserver" ]
        # vb.gui = true
    end

    config.vm.provision "shell",path: "env.sh"




    # config.vm.provision "shell",
    # #     inline: "mkdir /vagrant/ys"
    # config.vm.provision "shell",inline:"sudo dnf install puppet -y"
    # config.vm.provision "shell",inline:"sudo chkconfig puppet on"
    # # Run apt-get update as a separate step in order to avoid
    # # package install errors
    # config.vm.provision :puppet do |puppet|
    #     # puppet.manifests_path = "manifests"
    #     puppet.manifest_file  = "manifests/dnfgetupdate.pp"
    # end

    # # ensure we have the packages we need
    # config.vm.provision :puppet do |puppet|
    #     puppet.manifests_path = "manifests"
    #     puppet.manifest_file  = "plone.pp"
    # end

    # # Create a Putty-style keyfile for Windows users
    # config.vm.provision :shell do |shell|
    #     shell.path = "manifests/host_setup.sh"
    #     shell.args = RUBY_PLATFORM
    # end

    # # install Plone
    #     config.vm.provision :shell do |shell|
    #     shell.path = "manifests/install_plone.sh"
    #     shell.args = UI_URL + " '" + UI_OPTIONS + "'"
    # end
end
