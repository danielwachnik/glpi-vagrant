# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # glpi server
  config.vm.define "glpinode" do |glpinode|
    glpinode.vm.box = "debian/bookworm64"
    glpinode.vm.hostname = "glpinode"
    glpinode.vm.box_url = "debian/bookworm64"
    glpinode.vm.network :public_network, use_dhcp_assigned_default_route: true
    glpinode.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 4096]
      v.customize ["modifyvm", :id, "--name", "glpi-node"]
      v.customize ["modifyvm", :id, "--cpus", "2"]
    end
   glpinode.vm.provider: "vmware_desktop" do |v|
      v.vmx ["memsize"] = "4096"
      v.vmx ["numvcpus"] = "2"
    end
    config.vm.provision "shell", inline: <<-SHELL
      sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config    
      service ssh restart
    SHELL
    glpinode.vm.provision "shell", path: "install_docker.sh"
    glpinode.vm.provision "shell", path: "deploye_container.sh"
  end
end
