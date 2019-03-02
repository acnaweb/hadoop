#!/usr/bin/env bash

cd /home/vagrant/Downloads

# uncompress
rm -Rf spark-2.4.0-bin-hadoop2.7
tar -xzf spark-2.4.0-bin-hadoop2.7.tgz

# move to /usr/local
rm -Rf /usr/local/spark-2.4.0-bin-hadoop2.7/
mv spark-2.4.0-bin-hadoop2.7/ /usr/local

# create link
ln -fs /usr/local/spark-2.4.0-bin-hadoop2.7/ /opt/spark

# change owner
chown -R vagrant:vagrant /usr/local/spark-2.4.0-bin-hadoop2.7
chown -R vagrant:vagrant /opt/spark

# environment
echo '' >> /home/vagrant/.bashrc
echo 'export SPARK_HOME=/opt/spark' >> /home/vagrant/.bashrc
echo 'export PATH=$PATH:$SPARK_HOME/bin' >> /home/vagrant/.bashrc



