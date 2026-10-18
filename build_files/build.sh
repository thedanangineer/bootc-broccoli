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
dnf5 -y install btop
dnf5 -y install distrobox
dnf5 -y install eza
dnf5 -y install fastfetch
dnf5 -y install krusader
dnf5 -y install mc
dnf5 -y install nnn
dnf5 -y install zoxide
dnf5 -y install zsh
# this removes packages from the install
dnf5 -y remove akonadi
dnf5 -y remove firefox
dnf5 -y remove kaddressbook
dnf5 -y remove kbd-layout-viewer5
dnf5 -y remove kcharselect
dnf5 -y remove kcontact
dnf5 -y remove kdebugsettings
dnf5 -y remove kde-connect
dnf5 -y remove kde-connect-libs
dnf5 -y remove kdeconnectd
dnf5 -y remove kmail
dnf5 -y remove kolourpaint
dnf5 -y remove korganizer
dnf5 -y remove krfb
dnf5 -y remove nvtop
dnf5 -y remove plasma-discover
dnf5 -y remove plasma-discover-offline-updates
dnf5 -y remove plasma-discover-packagekit
dnf5 -y remove PackageKit-command-not-found
dnf5 -y remove tracker
dnf5 -y remove tracker-miners
dnf5 -y remove mariadb-server-utils
dnf5 -y remove abrt
dnf5 -y remove at
dnf5 -y remove dnf-data
dnf5 -y remove iptables-services
dnf5 -y remove iptables-utils
dnf5 -y remove rsyslog
dnf5 -y remove dracut-config-rescue
# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

systemctl enable podman.socket
