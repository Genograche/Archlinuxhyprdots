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
    ffmpeg neovim shotwell rofi rofi-emoji pavucontrol thunar galculator \
    starship cliphist wl-clipboard swww waypaper slurp grimblast-git \
    ffmpegthumbnailer tumbler gvfs playerctl noise-suppression-for-voice \
    xarchiver thunar-archive-plugin thunar-media-tags-plugin kitty alacritty \
    thunar-volman gvfs-mtp waybar swaync swaidle swaylock-effects pamixer \
    papirus-icon-theme nwg-look ttf-firacode-nerd noto-fonts \
    noto-fonts-emoji ttf-nerd-fonts-symbols-common otf-firamono-nerd \
    kvantum kvantum-qt5 qt5-wayland qt6-wayland brightnessctl hyprpicker-git \
    pipewire lib32-pipewire wireplumber pipewire-audio pipewire-pulse \
    pipewire-alsa pipewire-jack lib32-pipewire-jack xdg-user-dirs \
    xdg-desktop-portal-hyprland xdg-desktop-portal-gtk --needed
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
    cp -R .icons ~/
    cp -R .themes ~/
    cp -R Wallpapers ~/Pictures/
    cp -R fonts ~/.local/share/
```
## Kvantum theme is in justincase directory,use it to change the themes of qt apps.

```
fc-cache -fv
```
## Set some files as executables
```
chmod +x ~/.config/hypr/scripts/*
chmod +x ~/.config/waybar/scripts/*
```

## Enable zram (Ignore if archinstall script is used)
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
## Note
- `SUPER`+`backspace` brings up keybinds
- `super`+`return(enter)` brings up terminal(alacritty)
- Incase hyprland fails `ctrl`+`alt`+`F6(any function keys)` to open tty
- Change window resolution in hyprland.conf
- To change the themes of qt apps there is a kvantum theme in justincase directory use it.

## Important Things to remember(ONLY FOR ME-PERSONAL)
- Get fastest mirrors with
```
reflector --sort rate --protocol http,https --save /etc/pacman.d/mirrorlist
```
- themes.css in waybar config is soft linked to the desired theme in the themes folder(example:ln -s (or -sf)mocha.css themes.css)
- set default file manger $xdg-mime default thunar.desktop inode/directory
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
- check for amdgpu kernal driver instead of radeon
```
lspci -k | grep -A 3 -E "(VGA|3D|Display)"
```
- For my amd graphics driver if amdgpu kernal driver is not used set the following kernal parameters(/etc/default/grub)
```
radeon.si_support=0 amdgpu.si_support=1
radeon.cik_support=0 amdgpu.cik_support=1
```
- If discrete gpu is not properly working,then set the following kernal parameter(this will prevent the dGPU from being powered down dynamically at runtime.
)
```
amdgpu.runpm=0
```
- If you want to enable the new Dynamic Power Management and Display Code experimental support, you need to also add the following lines(could tottaly be unnecessary,so only enable if needed).
```
amdgpu.dc=1
amdgpu.dpm=1
```
-Then update grub
```
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

- For my amd,if needed for vdapu,set env variables in /etc/profile
```
export VDPAU_DRIVER=radeonsi
export LIBVA_DRIVER_NAME=radeonsi
```
- loginmanager-sddm
```
pacman -Syu sddm qt5-graphicaleffects qt5-svg qt5-quickcontrols2
sudo cp -r sddm/corners /usr/share/sddm/themes/
sudo cp sddm/genograche.face.icon /usr/share/sddm/faces/
```
- change sddm configuration in in /etc/sddm.conf.d/sddm.conf(on arch default config is available in /usr/lib/sddm/sddm.conf.d/default.conf)
```
[Theme]
Current=corners
```
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
## Sddm theme from
[aczw](https://github.com/aczw)
## The rest from Archwiki and Hyprlandwiki
[Archwiki](https://wiki.archlinux.org/)\
[Hyprland](https://wiki.hyprland.org/)
