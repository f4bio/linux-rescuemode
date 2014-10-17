#!/bin/bash

BOOTHDD="sda1"
ROOTHDD="sda2"

mount /dev/"$ROOTHDD" /mnt
mount /dev/"$BOOTHDD" /mnt/boot

mount --bind /dev /mnt/dev
mount --bind /proc /mnt/proc
mount --bind /sys /mnt/sys
