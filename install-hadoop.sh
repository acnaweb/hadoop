#!/usr/bin/env bash

cd /home/vagrant/Downloads

# uncompress
rm -Rf hadoop-2.8.5
tar -xzf hadoop-2.8.5.tar.gz 

# move to /usr/local
rm -Rf /usr/local/hadoop-2.8.5/
mv hadoop-2.8.5/ /usr/local

# create link
ln -fs /usr/local/hadoop-2.8.5/ /opt/hadoop

# changing owner
chown -R vagrant:vagrant /usr/local/hadoop-2.8.5 
chown -R vagrant:vagrant /opt/hadoop

# environment
echo '' >> /home/vagrant/.bashrc
echo 'export HADOOP_HOME=/opt/hadoop' >> /home/vagrant/.bashrc
echo 'export HADOOP_INSTALL=$HADOOP_HOME' >> /home/vagrant/.bashrc
echo 'export HADOOP_COMMON_HOME=$HADOOP_HOME' >> /home/vagrant/.bashrc
echo 'export HADOOP_MAPRED_HOME=$HADOOP_HOME' >> /home/vagrant/.bashrc
echo 'export HADOOP_HDFS_HOME=$HADOOP_HOME' >> /home/vagrant/.bashrc
echo 'export YARN_HOME=$HADOOP_HOME' >> /home/vagrant/.bashrc
echo 'export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin' >> /home/vagrant/.bashrc






