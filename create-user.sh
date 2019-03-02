#!/usr/bin/env bash

useradd -m -s /bin/bash -U hadoop -u 666 --groups wheel
passwd -d hadoop
cp -pr /home/vagrant/.ssh /home/hadoop/
chown -R hadoop:hadoop /home/hadoop
echo "%hadoop ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/hadoop
