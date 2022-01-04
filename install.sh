#!/bin/bash

which yay
if [ $? == 1 ]; then
    pacman -S --needed git base-devel
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
fi

which man 
if [ $? == 1 ]; then
    echo "Installing SHC"
    sudo pacman -S man-db man-pages
fi

which shc 
if [ $? == 1 ]; then
    echo "Installing SHC"
    yay -S shc
fi

shc -o devtool -f main.sh
cp devtool /usr/bin/
