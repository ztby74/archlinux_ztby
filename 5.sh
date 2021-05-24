#!/bin/bash


echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "arch" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 arch.localdomain arch" >> /etc/hosts
echo "140.82.113.3  github.com "  >> /etc/hosts
echo "140.82.113.4  github.com "  >> /etc/hosts
echo "140.82.133.4  github.com "  >> /etc/hosts
echo "140.82.114.4  github.com "  >> /etc/hosts
echo "140.82.112.4  github.com "  >> /etc/hosts
echo "185.199.108.133  raw.githubusercontent.com" >> /etc/hosts
echo "185.199.109.133  raw.githubusercontent.com" >> /etc/hosts
