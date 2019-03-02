#!/usr/bin/env bash
cd /home/vagrant/Downloads

# uncompress
rm -Rf zookeeper-3.4.12
tar -xzf zookeeper-3.4.12.tar.gz 

# move to /usr/local
rm -Rf /usr/local/zookeeper-3.4.12/
mv zookeeper-3.4.12/ /usr/local

# create link
ln -fs /usr/local/zookeeper-3.4.12/ /opt/zookeeper

# config
mkdir /opt/zookeeper/data

#change owner
chown -R vagrant:vagrant /usr/local/zookeeper-3.4.12
chown -R vagrant:vagrant /opt/zookeeper

# environment
echo '' >> /home/vagrant/.bashrc
echo 'export ZOOKEEPER_HOME=/opt/zookeeper' >> /home/vagrant/.bashrc
echo 'export PATH=$PATH:$ZOOKEEPER_HOME/bin' >> /home/vagrant/.bashrc









