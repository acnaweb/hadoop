#!/usr/bin/env bash

# ****************************************************************************************
# monitoring
jps 

# http://localhost:8088/cluster


# ****************************************************************************************
# commands
hadoop version

hdfs dfs -mkdir /foldername
hdfs dfs -cat /output/*
hdfs dfs -ls /user

# list table
hdfs dfs -ls -R empregados

# list table content 
hdfs dfs -cat  empregados/part-m-00000

hdfs dfs -chmod 777 /user



# list blocks
hdfs fsck /user/bigdata -files -blocks

# list conf
# 2.7.3+ 134217728 = 128 mb
hdfs getconf -confKey dfs.blocksize
hdfs dfs -stat %o hdfs://localhost:9000/user/bigdata/u.data


# summary file
hdfs dfs -count -q /user/bigdata

#copy local to hdfs
hdfs dfs -put u.data /user/bigdata

#copy hdfs to local
hdfs dfs -get /user/bigdata/u.data /home/vagrant

# disk used
hdfs dfs -du /user/bigdata


hadoop fs -copyFromLocal /vagrant/contratos.csv /foldername

# job mapreduce (somente Java)
hadoop jar /opt/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.8.5.jar wordcount /foldername/contratos.csv /output/

# system file
cat /etc/fstab




