
### ----- Loading Antidote -----
source ${HOME}/.antidote/antidote.zsh && antidote load

### ----- User-Configuration -----
export PATH="/home/knichian/.local/bin:$PATH" # Added by cua-driver-rs installer — see https://github.com/trycua/cua
export ARCHFLAGS="-arch $(uname -m)" # Knichian: Compilation flags
export MANPATH="/usr/local/man:$MANPATH" # Knichian: extra man path
export EDITOR='/usr/bin/nvim' # Knichian: nvim as default terminal editor
[ -f ~/.zsh_aliases ] && source ~/.zsh_aliases # Knichian: aliases file

