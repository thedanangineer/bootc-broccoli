# bootc-broccoli

![bootc broccoli](/scrot/broccoli.png)

It is not all that important.

Veggies are good for you. Bootc is good for you.

Hence bootc-broccoli, where I mix and stir-fry anything. 

Oct 18, 2026: Currently on the menu: an adjusted KDE base image (based on the latest tag of Fedora-bootc).

### Reasoning:

For my work I needed a reliable laptop. In the end I decided to stay as close to the source as possible: 
    Fedora's bootc image, with the 'latest' tag and layer KDE on top of that.
    
In the current KDE implementation on Fedora there are some odd additions being made (Gnome disks? Gnome CD master?) 
    and it comes with a number of included applications. 
    Great for people starting out in Linux, not so for me.

The purpose of a bootc image is to be as lean as possible, and applications are layered on top it by using 
    flatpaks, distrobox and homebrew (brew you'll need to add yourself, btw).

All applications that I removed are easily re-added by flatpak.


### Added:
    @kde-desktop-environment        fastfetch                   nnn
    btop                            htop                        zoxide
    distrobox                       krusader                    zsh
    eza                             mc
    

### Removed:
    abrt                            kamoso                      ktorrent
    akonadi                         kbd-layout-viewer5          krdc
    akregator                       kcalc                       krfb
    at                              kcharselect                 libreoffice-base
    digikam                         kcontact                    libreoffice-calc
    dnf-data                        kdebugsettings              libreoffice-impress
    dracut-config-rescue            kde-connect                 libreoffice-writer
    dragon                          kde-connect-libs            mariadb-server-utils
    elisa-player                    kdeconnectd                 neochat
    filelight                       kfind                       nvtop
    firefox                         kleopatra                   plasma-discover
    gcdmaster                       kmahjongg                   plasma-discover-offline-updates
    gnome-disk-utility              kmail                       plasma-discover-packagekit
    im-chooser                      kmines                      PackageKit-command-not-found
    iptables-services               kmouth                      qrca
    iptables-utils                  kolourpaint                 rsyslog
    k3b                             korganizer                  skanpage
    kaddressbook                    kpat                        tracker
                                                                tracker-miners


From the terminal flatpak and distrobox are available. You can easily install an appstore like Easyflatpak or Bazaar. I install my applications from the CLI.

---------

KISS. Install any Fedora-based bootc image first (Silverblue, Kinoite, Bluefin). 

Then:

        sudo bootc switch ghcr.io/thedanangineer/bootc-broccoli


Currently the image gets renewed every Wednesday and Saturday, so sit back and relax. 

---------

Feel free to use these builds and dots. I do not, however, offer or imply any form of support or ongoing maintenance. And of course, you use them entirely at your own risk.

### Bon appetit!
