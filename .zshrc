# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/genograche/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Menu select
zstyle ':completion:*' menu select

# Sources
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/doc/pkgfile/command-not-found.zsh

# Starship 
eval "$(starship init zsh)"

# Created by `pipx` on 2024-01-28 20:06:10
export PATH="$PATH:/home/genograche/.local/bin"

# Alias

# Mrror stuff
alias mirror='sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist'
alias mirrora='sudo reflector --latest 30 --number 10 --sort age --save /etc/pacman.d/mirrorlist'
alias mirrord='sudo reflector --latest 30 --number 10 --sort delay --save /etc/pacman.d/mirrorlist'
alias mirrors='sudo reflector --latest 30 --number 10 --sort score --save /etc/pacman.d/mirrorlist'
alias mirrorx='sudo reflector --age 6 --latest 20  --fastest 20 --threads 5 --sort rate --protocol https --save /etc/pacman.d/mirrorlist'
alias mirrorxx='sudo reflector --age 6 --latest 20  --fastest 20 --threads 20 --sort rate --protocol https --save /etc/pacman.d/mirrorlist'
alias ram='rate-mirrors --allow-root --disable-comments arch | sudo tee /etc/pacman.d/mirrorlist'
alias rams='rate-mirrors --allow-root --disable-comments --protocol https arch  | sudo tee /etc/pacman.d/mirrorlist'

#Normal stuff
alias ls='ls -a --color=auto'
alias grep='grep --color=auto'
alias upgrade='sudo pacman -Syyu'
alias mirror='reflector --latest 6 --sort rate --protocol http,https --save /etc/pacman.d/mirrorlist'
alias update='sudo pacman -Syyu'
alias fullupdate='yay -Syyu'
alias pacin='sudo pacman -S'
alias pacrm='sudo pacman -Rns'
alias search='pacman -Ss'
alias losearch='pacman -Qs'
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'
alias cachecln= "sudo paccache -urk0"
alias vi='nvim'
alias inm='sudo systemctl restart NetworkManager.service'
alias history='history 1'
