#!/bin/bash

read -p "Enter boot hdd id [sda1]: " inBootHdd
read -p "Enter boot hdd id [sda3]: " inRootHdd

export BOOTHDD=${inBootHdd:-sda1}
export ROOTHDD=${inRootHdd:-sda3}

mount /dev/"$ROOTHDD" /mnt
mount /dev/"$BOOTHDD" /mnt/boot

mount --bind /dev /mnt/dev
mount --bind /proc /mnt/proc
mount --bind /sys /mnt/sys

echo "now run `$ chroot /mnt/custom /bin/bash`"
