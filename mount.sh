#!/bin/bash

read -p "Enter boot partition [/dev/sda1]: " inBootPartition
read -p "Enter root partition [/dev/sda3]: " inRootPartition
read -p "Enter mount path [/mnt/custom]: " inMountPath
read -p "Enter shell path [/bin/bash]: " inShellPath

export BOOTPART=${inBootPartition:-/dev/sda1}
export ROOTPART=${inRootPartition:-/dev/sda3}
export MOUNTPATH=${inMountPath:-/mnt/custom}
export SHELLPATH=${inShellPath:-/bin/bash}

mkdir -p "$MOUNTPATH"

mount "$ROOTPART" "$MOUNTPATH"
mount "$BOOTPART" "$MOUNTPATH"/boot

mount --bind /dev "$MOUNTPATH"/dev
mount --bind /proc "$MOUNTPATH"/proc
mount --bind /sys "$MOUNTPATH"/sys

echo "now run `\$ chroot $MOUNTPATH /bin/bash`"
