# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.local/scripts

bindkey -s ^f "tmux-sessionizer\n"
bindkey -s '\eJ' "tmux-sessionizer -s 0\n"
bindkey -s '\eK' "tmux-sessionizer -s 1\n"
bindkey -s '\eL' "tmux-sessionizer -s 2\n"

ZSH_THEME="apple"

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    zoxide
)

source $ZSH/oh-my-zsh.sh


# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
#pokemon-colorscripts --no-title -s -r #without fastfetch
pokemon-colorscripts --no-title -s -r | fastfetch -c $HOME/.config/fastfetch/config-pokemon.jsonc --logo-type file-raw --logo-height 10 --logo-width 5 --logo -

# fastfetch. Will be disabled if above colorscript was chosen to install
#fastfetch -c $HOME/.config/fastfetch/config-compact.jsonc

# Set-up icons for files/directories in terminal using lsd
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'


# opencode
export PATH=/home/dmike/.opencode/bin:$PATH
