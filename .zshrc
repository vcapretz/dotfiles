export ZSH="$HOME/.oh-my-zsh"
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="punctual"
PUNCTUAL_SHOW_HOSTNAME="false"

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

plugins=(git z zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
eval "$(rbenv init - zsh)"

alias vi="nvim"
alias vim="nvim"
alias nr="npm run"
alias pn="pnpm"
alias y="yarn"

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# pnpm
export PNPM_HOME="/Users/vcapretz/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun completions
[ -s "/Users/vcapretz/.bun/_bun" ] && source "/Users/vcapretz/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# deno
export DENO_INSTALL="/Users/vcapretz/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

