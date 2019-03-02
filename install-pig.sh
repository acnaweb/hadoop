#!/usr/bin/env bash

cd /home/vagrant/Downloads

# uncompress
rm -Rf pig-0.17.0
tar -xzf pig-0.17.0.tar.gz 

# move to /usr/local
rm -Rf /usr/local/pig-0.17.0/
mv pig-0.17.0/ /usr/local

# create link
ln -fs /usr/local/pig-0.17.0/ /opt/pig

# change owner
chown -R vagrant:vagrant /usr/local/pig-0.17.0
chown -R vagrant:vagrant /opt/pig

# environment
echo '' >> /home/vagrant/.bashrc
echo 'export PIG_HOME=/opt/pig' >> /home/vagrant/.bashrc
echo 'export PATH=$PATH:$PIG_HOME/bin' >> /home/vagrant/.bashrc
echo 'export PIG_CLASSPATH=$HADOOP_HOME/conf' >> /home/vagrant/.bashrc



