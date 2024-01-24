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

### Required Packages

``` bash

    yay -S --noconfirm hyprland-git polkit-gnome ffmpeg neovim viewnior \
    rofi-lbonn-wayland pavucontrol thunar starship cliphist wl-clipboard \
    wf-recorder swww waypaper grimblast-git ffmpegthumbnailer tumbler gvfs \
    playerctl noise-suppression-for-voice file-roller thunar-archive-plugin \
    thunar-media-tags-plugin kitty thunar-volman gvfs-mtp \
    waybar-git wlogout swaylock-effects pamixer     \
    nwg-look-bin dunst ttf-firacode-nerd noto-fonts \
    noto-fonts-emoji ttf-nerd-fonts-symbols-common otf-firamono-nerd \
    brightnessctl hyprpicker-git pipewire lib32-pipewire wireplumber \
    pipewire-audio pipewire-pulse pipewire-alsa pipewire-jack \
    lib32-pipewire-jack xdg-user-dirs xdg-desktop-portal-hyprland htop pacman-contrib reflector
```
## Notes
- bash completion
- all noto fonts
- groups wheel
- ntp
- network manger
- make threds -j$(nproc)
- fstrim.timer
- swapfile(refer to wiki)
- auto-cpufreq

- IF dhcpcd is installed then save
```bash
sudo systemctl enable dhcpcd@(interface).service
```
```
[Service]
ExecStart=
ExecStart=/usr/bin/dhcpcd -b -q %I
```

- To /etc/systemd/system/dhcpcd@.service.d/no-wait.conf

- Check pipewire
```bash
pactl info
```
- Check zsh and starship prompt.If needed check fonts.zsh,zsh-autosuggestions,zsh-completions,zsh-syntax-highlighting
- Check xdg-desktop-portal-hyprland
- Blootooth?,Task manager?,powertop?
- wine,lutris
-Theme,sddm

## copied a lot from RumiAxalotl
![RumiAxolotl](https://github.com/RumiAxolotl)
