#!/usr/bin/env bash

cd /home/vagrant/Downloads

# uncompress
rm -Rf apache-hive-2.3.4-bin
tar -xzf apache-hive-2.3.4-bin.tar.gz 

# move to /usr/local
rm -Rf /usr/local/hive-2.3.4/
mv apache-hive-2.3.4-bin/ /usr/local/hive-2.3.4

# create link
ln -fs /usr/local/hive-2.3.4/ /opt/hive


# changing owner
chown -R vagrant:vagrant /usr/local/hive-2.3.4
chown -R vagrant:vagrant /opt/hive

# environment
echo '' >> /home/vagrant/.bashrc
echo 'export HIVE_HOME=/opt/hive' >> /home/vagrant/.bashrc
echo 'export PATH=$PATH:$HIVE_HOME/bin' >> /home/vagrant/.bashrc
echo 'export CLASSPATH=$CLASSPATH:$HADOOP_HOME/lib/*:.' >> /home/vagrant/.bashrc
echo 'export CLASSPATH=$CLASSPATH:$HIVE_HOME/lib/*:.' >> /home/vagrant/.bashrc


