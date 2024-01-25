# Personal Arch Hyprland Configuration by Genograche

![Screenshot](https://github.com/Genograche/Arch-hyprlandconfigs/raw/main/hyprland.png)
## Installation

Ensure base-devel is installed before proceeding

### Yay

**Important**: Execute the following commands as a regular user, NOT as root!

```
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
     yay -R --noconfirm swaylock waybar
    yay -S hyprland-git polkit-gnome ffmpeg neovim viewnior \
    rofi-lbonn-wayland pavucontrol thunar starship cliphist wl-clipboard \
    wf-recorder swww waypaper grimblast-git ffmpegthumbnailer tumbler gvfs \
    playerctl noise-suppression-for-voice file-roller thunar-archive-plugin \
    thunar-media-tags-plugin kitty thunar-volman gvfs-mtp \
    waybar-git wlogout swaylock-effects pamixer papirus-icon-theme \
    nwg-look-bin dunst ttf-firacode-nerd noto-fonts qt5-wayland qt6-wayland\
    noto-fonts-emoji ttf-nerd-fonts-symbols-common otf-firamono-nerd \
    brightnessctl hyprpicker-git pipewire lib32-pipewire wireplumber \
    pipewire-audio pipewire-pulse pipewire-alsa pipewire-jack \
    lib32-pipewire-jack xdg-user-dirs xdg-desktop-portal-hyprland catppuccin-gtk-theme-mocha --needed
   
```
## Notes
- bash completion
- zsh and plugins
- all noto fonts
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
- loginmanager-greetd?
- Sans bold(font)
- catppuccin-gtk-theme-mocha (theme)
- Get a cursor theme

##Ignore the following if you have not installed dhcpcd

- IF dhcpcd is installed and startup is slow then save
```bash
sudo systemctl enable dhcpcd@(interface).service
```

- If dhcpcd causes the startup to slow save the folllowing to /etc/systemd/system/dhcpcd@.service.d/no-wait.conf

```
[Service]
ExecStart=
ExecStart=/usr/bin/dhcpcd -b -q %I
```
- If needed disable dhcpcd ARP probing in ```\etc\dhcpcd.conf```
```
noarp
```

## Copied a lot from RumiAxalotl
[RumiAxolotl](https://github.com/RumiAxolotl)
