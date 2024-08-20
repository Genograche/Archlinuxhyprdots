#!/bin/bash

#### Check for yay ####
ISYAY=/sbin/yay
if [ -f "$ISYAY" ]; then 
    echo -e "$COK - yay was located, moving on."
    yay -Suy
else 
    echo -e "$CWR - Yay was NOT located"
    read -n1 -rep $'[\e[1;33mACTION\e[0m] - Would you like to install yay (y,n) ' INSTYAY
    if [[ $INSTYAY == "Y" || $INSTYAY == "y" ]]; then
        git clone https://aur.archlinux.org/yay-bin.git &>> $INSTLOG
        cd yay
        makepkg -si --noconfirm &>> ../$INSTLOG
        cd ..
        
    else
        echo -e "$CER - Yay is required for this script, now exiting"
        exit
    fi
fi

### Install all of the above pacakges ####
# slurp needed for wlprop?
read -n1 -rep 'Would you like to install the packages? (y,n)' INST
if [[ $INST == "Y" || $INST == "y" ]]; then
    yay -S hyprland polkit-kde-agent gnome-keyring seahorse gnome-system-monitor \
    ffmpeg neovim shotwell rofi rofi-emoji pavucontrol thunar galculator \
    starship cliphist wl-clipboard swww waypaper grimblast-git \
    ffmpegthumbnailer tumbler gvfs playerctl noise-suppression-for-voice \
    xarchiver thunar-archive-plugin thunar-media-tags-plugin kitty alacritty \
    thunar-volman gvfs-mtp waybar swaync swayidle swaylock-effects pamixer \
    papirus-icon-theme nwg-look ttf-firacode-nerd noto-fonts \
    noto-fonts-emoji ttf-nerd-fonts-symbols-common otf-firamono-nerd \
    qt5ct qt6ct qt5-wayland qt6-wayland brightnessctl hyprpicker-git \
    pipewire lib32-pipewire wireplumber pipewire-audio pipewire-pulse \
    pipewire-alsa pipewire-jack lib32-pipewire-jack xdg-user-dirs \
    xdg-desktop-portal-hyprland xdg-desktop-portal-gtk catppuccin-gtk-theme-mocha --needed 
else 
    exit
fi

### making directories ###
echo -e "Making needed directories.\n"
xdg-user-dirs-update
mkdir -p ~/Pictures/Screenshots/
echo -e "Done!"

### Copy Config Files ###
read -n1 -rep 'Would you like to copy config files? (y,n)' CFG
if [[ $CFG == "Y" || $CFG == "y" ]]; then
    echo -e "Copying config files...\n"
    cp -R config/* ~/.config/
    cp -R .icons ~/
    cp -R .themes ~/
    cp -R Wallpapers ~/Pictures/
    cp -R fonts ~/.local/share/
    # Set some files as exacutable 
    chmod +x ~/.config/hypr/scripts/*
    chmod +x ~/.config/waybar/scripts/*
    echo -e "If rofi does not work,look at its permissions.\n"
    fc-cache -fv
  else 
    exit
fi

### Script is done ###
echo -e "Script had completed.\n"
echo -e "You can start Hyprland by typing Hyprland (note the capital H).\n"
read -n1 -rep 'Would you like to start Hyprland now? (y,n)' HYP
if [[ $HYP == "Y" || $HYP == "y" ]]; then
    exec Hyprland
else
    exit
fi
