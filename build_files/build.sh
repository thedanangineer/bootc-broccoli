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
dnf5 -y install budgie-desktop
dnf5 -y install budgie-control-center
dnf5 -y install budgie-desktop-view
dnf5 -y install budgie-display-configurator
dnf5 -y install sddm
dnf5 -y install alacritty
dnf5 -y install eza
dnf5 -y install fastfetch
dnf5 -y install gvfs
dnf5 -y install gvfs-client
dnf5 -y install gvfs-smb
dnf5 -y install mc
dnf5 -y install nemo
dnf5 -y install nemo-fileroller
dnf5 -y install papirus-icon-theme
dnf5 -y install pocillo-gtk-theme
dnf5 -y install pocillo-labwc-theme
dnf5 -y install zoxide
dnf5 -y install zsh

dnf5 -y remove firefox
dnf5 -y remove nvtop



# Use a COPR Example:
#
# dnf copr enable kordus/cosmic-apps
# dnf install snappea
# Disable COPRs so they don't end up enabled on the final image:
# dnf -y copr disable kordus/cosmic-apps

#### Example for enabling a System Unit File

systemctl enable podman.socket
