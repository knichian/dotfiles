
### --- loading antidote [begin] ---

source ${HOME}/.antidote/antidote.zsh

antidote load

### --- loading antidote [end] ---



### --- loading starship [begin] ---

eval "$(starship init zsh)"

### --- loading starship [end] ---



### --- zsh-config [begin] ---

# load zsh completions
fpath+=~/.zfunc
autoload -Uz compinit && compinit 

COMPLETION_WAITING_DOTS="true" # Uncomment the following line to display red dots whilst waiting for completion.

### --- zsh-config [end] ---



### --- User-configuration [begin] ---

export ARCHFLAGS="-arch $(uname -m)" # Knichian: Compilation flags

export MANPATH="/usr/local/man:$MANPATH" # Knichian: extra man path

EDITOR='/usr/bin/nvim' # Knichian: nvim as default terminal editor

[ -f ~/.zsh_aliases ] && source ~/.zsh_aliases # Knichian: aliases file

eval "$(zoxide init zsh)" # Knichian: zoxide

### --- User-configuration [end] ---



### --- Extra [begin] ---

# Added by cua-driver-rs installer — see https://github.com/trycua/cua
export PATH="/home/knichian/.local/bin:$PATH"

### --- Extra [end] ---



