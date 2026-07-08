# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your Oh My Zsh installation.
export ZSH="/opt/oh-my-zsh"

# prompt-theme:
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment one of the following lines to change the auto-update behavior
zstyle ':omz:update' mode disabled  # disable automatic updates

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
plugins=(
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-completions
    zsh-history-substring-search
    # zsh-autocomplete # Heavy-AF!
    sudo
    # dnf
    fzf
    zoxide
    # ufw
    colored-man-pages
    battery
    # git-lfs
    # python
    # tailscale
    # conda
    # conda-env
    # docker
    # docker-compose
    # lol
)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[ -f ~/.p10k.zsh ] && source ~/.p10k.zsh

# load zsh completions
fpath+=~/.zfunc; autoload -Uz compinit; compinit

### User configuration

# Compilation flags
export ARCHFLAGS="-arch $(uname -m)"

# Knichian: extra man path
export MANPATH="/usr/local/man:$MANPATH"

# Knichian: aliases file
[ -f ~/.zsh_aliases ] && source ~/.zsh_aliases

# Knichian: zoxide
eval "$(zoxide init zsh)"

# Knichian: nvim as default terminal editor
EDITOR='/usr/bin/nvim'

# Knichian: activate base python venv
BASE_VENV_ACTIVATOR=~/python_envs/base/venv/bin/activate
[ -f ${BASE_VENV_ACTIVATOR} ] && source ${BASE_VENV_ACTIVATOR}

export NVM_DIR="${HOME}/.nvm"
[ -s "${NVM_DIR}/nvm.sh" ] && source "${NVM_DIR}/nvm.sh" & # This loads nvm
# [ -s "${NVM_DIR}/bash_completion" ] && source "${NVM_DIR}/bash_completion"  # This loads nvm bash_completion
