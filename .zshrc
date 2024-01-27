# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/genograche/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Menu select
zstyle ':completion:*' menu select

#sources
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(starship init zsh)"

#alias
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias upgrade='sudo pacman -Syyu'
alias mirror='reflector --latest 6 --sort rate --save /etc/pacman.d/mirrorlist'
alias update='sudo pacman -Syyu'
alias fullupdate='yay -Syu'
alias pacin='sudo pacman -S'
alias pacrm='sudo pacman -Rns'
alias vi='nvim'
