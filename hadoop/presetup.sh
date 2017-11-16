echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDhWnhxm+qHW8EHQVwn0dMTSZN7B4zVjCAT4o20ZC91iOh0YyKrmjsXouWXw465giOhsSuVkQ2TtftbUHuCDltToO1k+vAsiYD3hRg/N5mAXyDFMwZIiKIBB+7kByRIWdvw8tElvxZH4M6MvTpvN0L8BiKcoJukafd6ER0UL37PCez1BsfzxYtDDxt20zRe6gBAkW64AsgJO9gLdjSU4TEdFfPTAbShRAMo+JgrnEDyKJ64c9QLGOVq88IMSM1zHj0CGdfAl0E02+mfooNeYP37Vty2qOFRTgVecVch6twc8kC8446d+bHrPfYeWnqdDlIXHLDN5jLQNf/XPkjdMR63" >> /home/vagrant/.ssh/authorized_keys

sudo apt-get update
sudo apt-get -y dist-upgrade
sudo apt-get install -y openjdk-7-jdk vim
sudo sed -i 's/"syntax/syntax/g' /etc/vim/vimrc

if [ ! -d "/home/vagrant/hadoop" ]; then
    tar -xzvf /hadoop_src/hadoop-2.8.2.tar.gz  -C /home/vagrant/
    mv  /home/vagrant/hadoop-2.8.2 /home/vagrant/hadoop
    sed -i 's/JAVA_HOME=${JAVA_HOME}/JAVA_HOME=\/usr\/lib\/jvm\/java-7-openjdk-amd64/g' /home/vagrant/hadoop/etc/hadoop/hadoop-env.sh
    sudo chown -R vagrant:vagrant /home/vagrant/

    echo '
        export HADOOP_PREFIX="/home/vagrant/hadoop"
        export HADOOP_HOME=$HADOOP_PREFIX
        export HADOOP_COMMON_HOME=$HADOOP_PREFIX
        export HADOOP_CONF_DIR=$HADOOP_PREFIX/etc/hadoop
        export HADOOP_HDFS_HOME=$HADOOP_PREFIX
        export HADOOP_MAPRED_HOME=$HADOOP_PREFIX
        export HADOOP_YARN_HOME=$HADOOP_PREFIX
    ' >> /home/vagrant/.bashrc   
fi

#export JAVA_HOME=${JAVA_HOME}