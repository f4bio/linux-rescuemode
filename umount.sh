#!/bin/bash

read -p "Enter mount path [$MOUNTPATH]: " inMountPath

read -p "did you exit chroot? [Y/n]: " yN

if [ "$yN" = "n" ]; then
  echo "exit chroot and run this script again"
  exit 1
fi

umount "$MOUNTPATH"/dev
umount "$MOUNTPATH"/proc
umount "$MOUNTPATH"/sys

umount "$MOUNTPATH"/boot
umount "$MOUNTPATH"
