#!/usr/bin/env bash

cd /home/vagrant/Downloads

# uncompress
rm -Rf sqoop-1.4.7.bin__hadoop-2.6.0
tar -xzf sqoop-1.4.7.bin__hadoop-2.6.0.tar.gz 

# move to /usr/local
rm -Rf /usr/local/sqoop-1.4.7.bin__hadoop-2.6.0/
mv sqoop-1.4.7.bin__hadoop-2.6.0/ /usr/local

# create link
ln -fs /usr/local/sqoop-1.4.7.bin__hadoop-2.6.0/ /opt/sqoop


mkdir /opt/sqoop/hcatalog
mkdir /opt/sqoop/accumulo

# change owner
chown -R vagrant:vagrant /usr/local/sqoop-1.4.7.bin__hadoop-2.6.0
chown -R vagrant:vagrant /opt/sqoop

# environment
echo '' >> /home/vagrant/.bashrc
echo 'export SQOOP_HOME=/opt/sqoop' >> /home/vagrant/.bashrc
echo 'export PATH=$PATH:$SQOOP_HOME/bin' >> /home/vagrant/.bashrc
echo 'export ACCUMULO_HOME=/opt/sqoop/accumulo' >> /home/vagrant/.bashrc
echo 'export HCAT_HOME=/opt/sqoop/hcatalog' >> /home/vagrant/.bashrc
echo 'export CLASSPATH=$CLASSPATH:$SQOOP_HOME/*:.' >> /home/vagrant/.bashrc





