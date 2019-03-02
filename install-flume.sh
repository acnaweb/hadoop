#!/usr/bin/env bash

cd /home/vagrant/Downloads

# uncompress
rm -Rf apache-flume-1.8.0-bin 
tar -xzf apache-flume-1.8.0-bin.tar.gz 

# move to /usr/local
rm -Rf /usr/local/flume-1.8.0/
mv apache-flume-1.8.0-bin /usr/local/flume-1.8.0

# create link
ln -fs /usr/local/flume-1.8.0  /opt/flume

# change owner
chown -R vagrant:vagrant /usr/local/flume-1.8.0 
chown -R vagrant:vagrant /opt/flume

# environment
echo '' >> /home/vagrant/.bashrc
echo 'export FLUME_HOME=/opt/flume' >> /home/vagrant/.bashrc
echo 'export PATH=$PATH:$FLUME_HOME/bin' >> /home/vagrant/.bashrc


