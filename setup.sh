#!/bin/bash
#
echo '===== Updating APT ====='
apt-get -y update
echo '===== Upgrading ====='
apt-get -y upgrade
apt-get -y dist-upgrade
echo '===== Installing PIXEL ====='
apt-get install --no-install-recommends xserver-xorg raspberrypi-ui-mods lxterminal gvfs fonts-noto rc-gui
echo '===== Cleaning Cache ====='
apt-get -y clean
