#!/usr/bin/env bash

# Ensure no user interaction.
export DEBIAN_FRONTEND=noninteractive

# Install desktop system.
add-apt-repository -y ppa:gnome3-team/gnome3
apt-get update -y
apt-get install -y gnome-shell ubuntu-gnome-desktop
apt-get upgrade -y

# Install guest additions.
wget https://download.virtualbox.org/virtualbox/6.0.4/VBoxGuestAdditions_6.0.4.iso
mkdir /media/GuestAdditionsISO
mount -o loop VBoxGuestAdditions_6.0.4.iso /media/GuestAdditionsISO
/media/GuestAdditionsISO/VBoxLinuxAdditions.run -- --force

# John the Ripper prerequisites.
apt-get install -y build-essential
apt-get install -y libssl-dev
apt-get install -y ocl-icd-opencl-dev opencl-headers pocl-opencl-icd

# Analytic password cracking utility prerequisites.
apt-get install -y build-essential python3-pip git
