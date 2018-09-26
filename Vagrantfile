# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    apt-get install -y tmux build-essential libncurses5-dev
    mkdir -p /downloaded-rootfs && cd /downloaded-rootfs/
    wget http://cdimage.ubuntu.com/ubuntu-base/releases/14.04/release/ubuntu-base-14.04-core-amd64.tar.gz
    wget https://dl.google.com/go/go1.11.linux-amd64.tar.gz
    
    tar -xzf ubuntu-base-14.04*.tar.gz
    tar -C /usr/local -xzf go*linux-amd64.tar.gz

    rm go*linux-amd64.tar.gz ubuntu-base-14.04*.tar.gz

    echo 'export PATH=$PATH:/usr/local/go/bin' >> /etc/profile
  SHELL
end
