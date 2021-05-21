  
#!/bin/bash

genfstab -U /mnt >> /mnt/etc/fstab
timedatectl set-ntp true
