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
dnf5 -y install @cosmic-desktop-environment
dnf5 -y install btop
dnf5 -y install distrobox
dnf5 -y install eza
dnf5 -y install fastfetch
dnf5 -y install mc
dnf5 -y install nnn
dnf5 -y install zoxide
dnf5 -y install zsh

dnf5 -y remove ark
dnf5 -y remove cosmic-edit
dnf5 -y remove cosmic-player
dnf5 -y remove firefox
dnf5 -y remove gnome-abrt
dnf5 -y remove gnome-calculator
dnf5 -y remove gnome-disk-utility
dnf5 -y remove gnome-system-monitor
dnf5 -y remove im-chooser
dnf5 -y remove libreoffice-base
dnf5 -y remove libreoffice-calc
dnf5 -y remove libreoffice-impress
dnf5 -y remove libreoffice-writer
dnf5 -y remove nheko
dnf5 -y remove nvtop
dnf5 -y remove okular
dnf5 -y remove rhythmbox
dnf5 -y remove system-config-language
dnf5 -y remove thunderbird
 


# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

systemctl enable podman.socket
