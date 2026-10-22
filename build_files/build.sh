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
dnf5 -y install @kde-desktop-environment
dnf5 -y install eza
dnf5 -y install fastfetch
dnf5 -y install mc
dnf5 -y install zoxide
dnf5 -y install zsh
# removing cruft                 
dnf5 -y remove akregator                   
dnf5 -y remove digikam                                                 
dnf5 -y remove dragon                                     
dnf5 -y remove elisa-player                                   
dnf5 -y remove filelight
dnf5 -y remove firefox
dnf5 -y remove k3b                                           
dnf5 -y remove kaddressbook
dnf5 -y remove kamoso
dnf5 -y remove kcalc
dnf5 -y remove kcharselect
dnf5 -y remove kde-connect
dnf5 -y remove kdebugsettings
dnf5 -y remove kfind
dnf5 -y remove kleopatra
dnf5 -y remove kmahjongg
dnf5 -y remove kmail
dnf5 -y remove kmines
dnf5 -y remove kmouth
dnf5 -y remove kolourpaint
dnf5 -y remove korganizer
dnf5 -y remove kpat
dnf5 -y remove krdc
dnf5 -y remove krfb
dnf5 -y remove ktorrent
dnf5 -y remove libreoffice-calc
dnf5 -y remove libreoffice-impress
dnf5 -y remove libreoffice-writer
dnf5 -y remove neochat
dnf5 -y remove nvtop
dnf5 -y remove plasma-discover
dnf5 -y remove qrca
dnf5 -y remove skanpage

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging
#### Example for enabling a System Unit File

systemctl enable podman.socket
