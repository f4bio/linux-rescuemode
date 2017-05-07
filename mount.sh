#!/bin/bash

BOOTHDD=${1:-"sda1"}
ROOTHDD=${2:-"sda3"}

mount /dev/"$ROOTHDD" /mnt
mount /dev/"$BOOTHDD" /mnt/boot

mount --bind /dev /mnt/dev
mount --bind /proc /mnt/proc
mount --bind /sys /mnt/sys

echo "now run `$ chroot /mnt/custom /bin/bash`"
