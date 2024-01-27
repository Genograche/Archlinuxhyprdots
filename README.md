# Personal Arch Hyprland Configuration by Genograche

![Screenshot](https://github.com/Genograche/Arch-hyprlandconfigs/raw/main/showcase/hyprland.png)
![Screenshot](https://github.com/Genograche/Arch-hyprlandconfigs/raw/main/showcase/hyprland-rofi.png)
## Installation
## Open Arch Wiki
Ensure base-devel is installed before proceeding

### Yay

**Important**: Execute the following commands as a regular user, NOT as root!

```bash
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```
### Clone the repo

``` bash
git clone https://github.com/Genograche/Arch-hyprlandconfigs.git
cd Arch-hyprlandconfigs
```
### Required Packages

``` bash
    yay -S hyprland-git polkit-gnome ffmpeg neovim viewnior \
    rofi-lbonn-wayland pavucontrol thunar starship cliphist wl-clipboard \
    wf-recorder swww waypaper grimblast-git ffmpegthumbnailer tumbler gvfs \
    playerctl noise-suppression-for-voice file-roller thunar-archive-plugin \
    thunar-media-tags-plugin kitty thunar-volman gvfs-mtp \
    waybar-git wlogout swaylock-effects pamixer papirus-icon-theme \
    nwg-look-bin dunst ttf-firacode-nerd noto-fonts qt5ct qt6ct qt5-wayland \
    qt6-wayland noto-fonts-emoji ttf-nerd-fonts-symbols-common otf-firamono-nerd \
    brightnessctl hyprpicker-git pipewire lib32-pipewire wireplumber \
    pipewire-audio pipewire-pulse pipewire-alsa pipewire-jack \
    lib32-pipewire-jack xdg-user-dirs xdg-desktop-portal-hyprland catppuccin-gtk-theme-mocha --needed
```
## Update user directories
```bash
xdg-user-dirs-update
```
## Making Screenshot directories
```
mkdir -p ~/Pictures/Screenshots/
```
## Copy Config files
```bash
    cp -R config/Thunar ~/.config/
    cp -R config/dunst ~/.config/
    cp -R config/hypr ~/.config/
    cp -R config/kitty ~/.config/
    cp -R config/neofetch ~/.config/
    cp -R config/ranger ~/.config/
    cp -R config/rofi ~/.config/
    cp -R config/swaylock ~/.config/
    cp -R config/waybar ~/.config/
    cp -R config/xfce4 ~/.config/
    cp -R wallpapers ~/Pictures/
```

## Set some files as executables
```bash
chmod +x ~/.config/hypr/xdg-desktop-portal-hyprland
chmod +x ~/.config/waybar/scripts/*
```

## Reboot
``` bash
reboot
```

## Things to remember(ONLY FOR ME-PERSONAL)
- bash completion
- zsh and plugins(starship)
- all noto fonts
```bash
 sudo pacman -S $(pacman -Ssq noto-fonts) --needed
```
- groups wheel
- ntp
- network manger
- make threds -j$(nproc)
- fstrim.timer
- swapfile(refer to wiki)
- auto-cpufreq
- Check pipewire
```bash
pactl info
```
- Check xdg-desktop-portal-hyprland(obs)
- Blootooth?,Task manager?,powertop?
- wine,lutris
- if needed for vdapu,set env variables in /etc/profile
```
export VDPAU_DRIVER=radeonsi
export LIBVA_DRIVER_NAME=radeonsi
```
- loginmanager-sddm
- Get a cursor theme

## Ignore the following if dhcpcd is not installed

- IF dhcpcd is installed and startup is slow then save
```bash
sudo systemctl enable dhcpcd@(ip link your interface name).service
```

- If dhcpcd causes the startup to slow then save the folllowing to /etc/systemd/system/dhcpcd@.service.d/no-wait.conf

```
[Service]
ExecStart=
ExecStart=/usr/bin/dhcpcd -b -q %I
```
- If needed disable dhcpcd ARP probing in ```\etc\dhcpcd.conf```
```
noarp
```

## Base config from RumiAxalotl
[RumiAxolotl](https://github.com/RumiAxolotl)
## Rofi config from adi1090x
[adi1090x](https://github.com/adi1090x)
## Sddm theme from MarianArlt 
[MarianArlt](https://github.com/MarianArlt)
## Grub theme from vinceliuce 
[vinceliuice](https://github.com/vinceliuice)
## The rest from Archwiki and Hyprlandwiki
[Archwiki](https://wiki.archlinux.org/)
[Hyprland](https://wiki.hyprland.org/)
