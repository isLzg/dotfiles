# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="dracula"

plugins=(
  git
  npm
  yarn
  nvm
  xcode
  vscode
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# aliases
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"

source ~/.bash_profile

# NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# VPN
export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/lizhigang/Library/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Funcs
function dir() {
  mkdir $1 && cd $1
}
