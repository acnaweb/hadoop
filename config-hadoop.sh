
# ****************************************************************************************
# config Hadoop

# permissions
ssh-keygen -t rsa
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
chmod 0600 ~/.ssh/authorized_keys

# format namenode
hdfs namenode -format