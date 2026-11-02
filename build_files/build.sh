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
dnf5 -y install eza
dnf5 -y install gwenview
dnf5 -y install krusader
dnf5 -y install mc
dnf5 -y install okular
dnf5 -y install zoxide

# this removes packages from the install
dnf5 -y remove filelight
dnf5 -y remove input-remapper
dnf5 -y remove kdebugsettings
dnf5 -y remove kde-connect
dnf5 -y remove kfind
dnf5 -y remove ksystemlog
dnf5 -y remove nvtop

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

systemctl enable podman.socket
