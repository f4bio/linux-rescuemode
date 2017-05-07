#!/bin/bash

BOOTHDD=${1:-"sda1"}
ROOTHDD=${2:-"sda3"}

echo "did you exit chroot?"

umount /mnt/dev
umount /mnt/proc
umount /mnt/sys

umount /mnt/boot
umount /mnt
