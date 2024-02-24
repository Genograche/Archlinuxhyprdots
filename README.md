# Personal Arch Hyprland Configuration by Genograche

![Screenshot](https://github.com/Genograche/Arch-hyprlandconfigs/raw/main/preview/hyprland.png)
![Screenshot](https://github.com/Genograche/Arch-hyprlandconfigs/raw/main/preview/applauncher.png)
![Screenshot](https://github.com/Genograche/Arch-hyprlandconfigs/raw/main/preview/notification.png)
![Screenshot](https://github.com/Genograche/Arch-hyprlandconfigs/raw/main/preview/powermenu.png)

## Installation
## Open [Arch Wiki](https://wiki.archlinux.org)
Ensure base-devel is installed before proceeding

### Install an aur helper like [Yay](https://github.com/Jguer/yay) or [Paru](https://github.com/Morganamilo/paru)

**Important**: Execute the following commands as a regular user, NOT as root!\
**Installing yay:**
```
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```
### Clone the repo

```
git clone https://github.com/Genograche/Archlinuxhyprdots.git
cd Arch-hyprlandconfigs
```
### Required Packages

```
    yay -S hyprland polkit-kde-agent gnome-keyring seahorse gnome-system-monitor \
    ffmpeg neovim viewnior rofi-lbonn-wayland pavucontrol thunar galculator \
    starship cliphist wl-clipboard swww waypaper slurp grimblast-git \
    ffmpegthumbnailer tumbler gvfs playerctl noise-suppression-for-voice \
    xarchiver thunar-archive-plugin thunar-media-tags-plugin kitty alacritty \
    thunar-volman gvfs-mtp waybar swaync swaidle swaylock-effects pamixer \
    papirus-icon-theme nwg-look-bin ttf-firacode-nerd noto-fonts \
    noto-fonts-emoji ttf-nerd-fonts-symbols-common otf-firamono-nerd \
    qt5ct qt6ct qt5-wayland qt6-wayland brightnessctl hyprpicker-git \
    pipewire lib32-pipewire wireplumber pipewire-audio pipewire-pulse \
    pipewire-alsa pipewire-jack lib32-pipewire-jack xdg-user-dirs \
    xdg-desktop-portal-hyprland xdg-desktop-portal-gtk catppuccin-gtk-theme-mocha --needed
```
## Update user directories
```
xdg-user-dirs-update
```
## Making Screenshot directories
```
mkdir -p ~/Pictures/Screenshots/
```
## Copy Config files
```
    cp -R config/* ~/.config/
    cp -R cursors/* ~/.local/share/icons/
    cp -R Wallpapers ~/Pictures/
    cp -R fonts ~/.local/share/
```
```
fc-cache -fv
```
## Set some files as executables
```
chmod +x ~/.config/hypr/scripts/*
chmod +x ~/.config/waybar/scripts/*
```

## Enable zram
```
sudo pacman -S zram-generator
touch /etc/systemd/zram-generator.config
```
- copy config from zram [Archwiki](https://wiki.archlinux.org/title/Zram)
- Run daemon-reload, then start your configured systemd-zram-setup@zramN.service instance(s).
- Check zram swap staus
```
zramctl
```

## Reboot
```
reboot
```

## Things to remember(ONLY FOR ME-PERSONAL)
- Get fastest mirrors with
```
reflector --sort rate --protocol http,https --save /etc/pacman.d/mirrorlist
```
- I removed wf-recorder
- themes.css in waybar config is soft linked to apneeded theme in the themes folder(example:ln -s (or -sf)mocha.css themes.css)
- set default applications $xdg-mime example:($xdg-mime default thunar.desktop inode/directory)
- bash completion
- zsh and plugins(starship)
- all noto fonts
```
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
```
pactl info
```
- Check xdg-desktop-portal-hyprland(obs)
- Blootooth?,Task manager?,powertop?
- wine,lutris
- For my amd graphics driver if needed set the following kernal parameters(/etc/default/grub)
```
radeon.si_support=0 amdgpu.si_support=1
radeon.cik_support=0 amdgpu.cik_support=1
```
- check for amdgpu kernal driver instead of radeon
```
lspci -k
```
- For my amd,if needed for vdapu,set env variables in /etc/profile
```
export VDPAU_DRIVER=radeonsi
export LIBVA_DRIVER_NAME=radeonsi
```
- loginmanager-sddm
- Get a cursor theme

## Ignore the following if dhcpcd is not installed

```
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
- If games in wine doesn't have sound get
```
winetricks faudio
winetricks xact
```

## Base config from RumiAxalotl
[RumiAxolotl](https://github.com/RumiAxolotl)
## Rofi configs and styles from adi1090x and Axenide
[adi1090x](https://github.com/adi1090x)\
[Axenide](https://github.com/Axenide)
## Sddm theme from MarianArlt 
[MarianArlt](https://github.com/MarianArlt)
## Grub theme from vinceliuce 
[vinceliuice](https://github.com/vinceliuice)
## The rest from Archwiki and Hyprlandwiki
[Archwiki](https://wiki.archlinux.org/)\
[Hyprland](https://wiki.hyprland.org/)
