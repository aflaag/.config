# Set env variables
export ZSH="$HOME/.oh-my-zsh"
export PATH="/home/aless/.cargo/bin:$PATH"

# Theme
ZSH_THEME="robbyrussell"

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Aliases
alias l="ls -la"
alias rm="rm -i"

eval "$(zoxide init --cmd cd zsh)"

# Splash screen on startup
$HOME/.pokemon-icat/pokemon-icat.sh # pokemon-icat: https://github.com/aflaag/pokemon-icat
