#!/bin/bash

pacstrap /mnt base base-devel linux linux-firmware linux-headers vi vim neovim bash fish zsh reflector git dhcpcd

genfstab -U /mnt >> /mnt/etc/fstab

arch-chroot /mnt

fish

ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

timedatecctl set-ntp true

hwclock --systohc

echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
echo "zh_CN.UTF-8 UTF-8" >> /etc/locale.gen

sed -i '177s/.//' /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "arch" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 arch.localdomain arch" >> /etc/hosts
echo "140.82.113.3  github.com "  >> /etc/hosts
echo "185.199.108.133  raw.githubusercontent.com" >> /etc/hosts
echo "185.199.109.133  raw.githubusercontent.com" >> /etc/hosts

echo root:password | chpasswd

pacman -S network manager network-manager-applet nm-connection-editor grub efibootmgr os-prober dosfstools ntfs-3g mtools amd-ucode


grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager

useradd  -s /bin/fish -mG wheel ztby
echo ztby:password | chpasswd
