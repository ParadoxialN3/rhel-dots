#!/bin/sh

# This is my post install script for RHEL that adds some of the basic things I need to get up and running. Its only installing a few fonts and some programs.

sudo dnf update

# Adding RPM Fusion and EPEL
subscription-manager repos --enable codeready-builder-for-rhel-9-$(arch)-rpms
sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm -y
sudo dnf install --nogpgcheck https://dl.fedoraproject.org/pub/epel/epel-release-latest-$(rpm -E %rhel).noarch.rpm -y
sudo dnf install --nogpgcheck https://mirrors.rpmfusion.org/free/el/rpmfusion-free-release-$(rpm -E %rhel).noarch.rpm https://mirrors.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-$(rpm -E %rhel).noarch.rpm -y
sudo dnf groupupdate core -y
sudo dnf install rpmfusion-free-release-tainted -y 
sudo dnf install rpmfusion-nonfree-release-tainted -y

# Adding FlatHub
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Installing Software I need
sudo dnf install akmod-nvidia zsh neovim vim htop gnome-tweaks gnome-extenstions openh264 -y
flatpak install discord nuclear builder Bitwarden Bottles flatseal
 # Installing some oddball flatpaks that are pains to install without a direct link
flatpak install flathub io.github.shiftey.Desktop
flatpak install flathub im.riot.Riot

# Adding Vim Plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Adding dotfiles 
git clone https://github.com/ParadoxialN3/rhel-dots
cd rhel-dots
cp nvim ~/.config/
cp .zshrc ~
nvim +PlugInstall

# Installing zsh plugins
cd ~
mkdir .zsh
cd .zsh
git clone https://github.com/zsh-users/zsh-autosuggestions
cd ~
echo Change your shell to /bin/zsh when prompted.
sleep 2
chsh $USER


echo Reboot Now. 
