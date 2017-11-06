#!/bin/sh

echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDhWnhxm+qHW8EHQVwn0dMTSZN7B4zVjCAT4o20ZC91iOh0YyKrmjsXouWXw465giOhsSuVkQ2TtftbUHuCDltToO1k+vAsiYD3hRg/N5mAXyDFMwZIiKIBB+7kByRIWdvw8tElvxZH4M6MvTpvN0L8BiKcoJukafd6ER0UL37PCez1BsfzxYtDDxt20zRe6gBAkW64AsgJO9gLdjSU4TEdFfPTAbShRAMo+JgrnEDyKJ64c9QLGOVq88IMSM1zHj0CGdfAl0E02+mfooNeYP37Vty2qOFRTgVecVch6twc8kC8446d+bHrPfYeWnqdDlIXHLDN5jLQNf/XPkjdMR63 nikita_nazemtsev@epam.com
" >> /home/vagrant/.ssh/authorized_keys

echo "192.168.50.10 master" >> /etc/hosts
echo "192.168.50.11 node1"  >> /etc/hosts
echo "192.168.50.12 node2"  >> /etc/hosts

sudo apt-get install apt-transport-https
#sudo wget -qO - https://packages.chef.io/chef.asc | sudo apt-key add -
#sudo echo "deb https://packages.chef.io/repos/apt/stable jessie main" > chef-stable.list
#sudo mv chef-stable.list /etc/apt/sources.list.d/
sudo apt-get update
sudo apt-get install -y vim curl htop
sudo sed -i 's/"syntax/syntax/g' /etc/vim/vimrc