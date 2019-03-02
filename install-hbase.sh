#!/usr/bin/env bash

cd /home/vagrant/Downloads

# uncompress
rm -Rf hbase-2.1.1
tar -xzf hbase-2.1.1-bin.tar.gz 

# move to /usr/local
rm -Rf /usr/local/hbase-2.1.1/
mv hbase-2.1.1/ /usr/local

# create link
ln -fs /usr/local/hbase-2.1.1/ /opt/hbase

# changing owner
chown vagrant:vagrant -R /usr/local/hbase-2.1.1
chown vagrant:vagrant -R /opt/hbase


# environment
echo '' >> /home/vagrant/.bashrc
echo 'export HBASE_HOME=/opt/hbase' >> /home/vagrant/.bashrc
echo 'export PATH=$PATH:$HBASE_HOME/bin' >> /home/vagrant/.bashrc



