#!/bin/bash

cat << EOF | sudo tee -a /etc/hosts

192.168.121.59 k3s-master-0 k3s-master-0.local
192.168.121.44 k3s-master-1 k3s-master-1.local
192.168.121.6 k3s-master-2 k3s-master-2.local
192.168.121.93 k3s-node-0 k3s-node-0.local
192.168.121.120 k3s-node-1 k3s-node-1.local
192.168.121.24 k3s-node-1 k3s-node-2.local
EOF

cat << EOF | sudo tee -a /etc/sudoers
vagrant ALL=(ALL) NOPASSWD: ALL
EOF

cat << EOF | sudo tee -a /etc/ssh/sshd_config

PubkeyAuthentication yes
PasswordAuthentication no
GSSAPIAuthentication yes
GSSAPICleanupCredentials no
PermitRootLogin yes
ChallengeResponseAuthentication yes
EOF