#!/usr/bin/env bash


# ****************************************************************************************
# start hadoop (namenode)
start-dfs.sh

# yarn (jobtracker)
start-yarn.sh

# start zookeeper
zkServer.sh start

# start hbase
start-hbase.sh
