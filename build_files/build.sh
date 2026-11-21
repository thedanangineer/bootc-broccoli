#!/bin/bash

set -ouex pipefail

# Copy the contents of system_files/ of the git repo to /
cp -avf "/ctx/system_files"/. /

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/43/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
dnf5 -y install @budgie-desktop-environment
dnf5 -y install alacritty
dnf5 -y install eza
dnf5 -y install fastfetch
dnf5 -y install mc
dnf5 -y install nemo
dnf5 -y install nemo-fileroller
dnf5 -y install zoxide
dnf5 -y install zsh

dnf5 -y remove ark
dnf5 -y remove baobab
dnf5 -y remove decibels
dnf5 -y remove dolphin
dnf5 -y remove firefox
dnf5 -y remove gnome-calculator
dnf5 -y remove gnome-calendar
dnf5 -y remove gnome-characters
dnf5 -y remove gnome-clocks
dnf5 -y remove gnome-contacts
dnf5 -y remove gnome-connections
dnf5 -y remove gnome-fonts
dnf5 -y remove gnome-logs
dnf5 -y remove gnome-maps
dnf5 -y remove gnome-text-editor
dnf5 -y remove gnome-weather
dnf5 -y remove kate
dnf5 -y remove kcalc
dnf5 -y remove kde-partitionmanager
dnf5 -y remove koko
dnf5 -y remove konsole
dnf5 -y remove loupe
dnf5 -y remove nheko
dnf5 -y remove nvtop
dnf5 -y remove okular
dnf5 -y remove papers
dnf5 -y remove parole
dnf5 -y remove plasma-discover
dnf5 -y remove rhythmbox
dnf5 -y remove snapshot


# Use a COPR Example:
#
# dnf copr enable kordus/cosmic-apps
# dnf install snappea
# Disable COPRs so they don't end up enabled on the final image:
# dnf -y copr disable kordus/cosmic-apps

#### Example for enabling a System Unit File

systemctl enable podman.socket
