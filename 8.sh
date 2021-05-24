#!/bin/bash

grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB 

#grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB --no-nvram --removable
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager.service
