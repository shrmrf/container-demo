# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.provision "shell", inline: <<-SHELL
    add-apt-repository -y ppa:gophers/archive
    apt-get update
    apt-get install -y golang-1.10 tmux build-essential libncurses5-dev
    mkdir -p /downloaded-rootfs && cd /downloaded-rootfs/
    wget http://cdimage.ubuntu.com/ubuntu-base/releases/14.04/release/ubuntu-base-14.04-core-amd64.tar.gz
    tar zxf ubuntu-base-14.04*.tar.gz
  SHELL
end
