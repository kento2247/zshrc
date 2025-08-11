# --- Instant Prompt for Powerlevel10k ---
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# --- Oh My Zsh & Theme ---
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# --- Powerlevel10k ---
source ~/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# --- Homebrew ---
eval "$(/opt/homebrew/bin/brew shellenv)"

# --- PATH settings ---
export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:/Users/tokurakento/apache-maven-3.9.2/bin"
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
export PATH="$PATH:$HOME/.npm-global/bin"

# --- OpenSSL ---
export LDFLAGS="-L/opt/homebrew/opt/openssl@1.1/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@1.1/lib/pkgconfig"

# --- API Keys ---
export OPENAI_API_KEY="YOUR_OPENAI_API_KEY"
export CLAUDE_API_KEY="YOUR_CLAUDE_API_KEY"
export GEMINI_API_KEY="YOUR_GEMINI_API_KEY"
export WANDB_API_KEY="YOUR_WANDB_API_KEY"

# --- NVM (Node Version Manager) ---
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# --- Alias ---
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"

# --- (Optional) Tcl/Tk for Homebrew ---
# export BREW_TCLTK_PREFIX="$(brew --prefix tcl-tk@8)"
# export CFLAGS="-I$BREW_TCLTK_PREFIX/include"
# export LDFLAGS="-L$BREW_TCLTK_PREFIX/lib"
# export CPPFLAGS="-I$BREW_TCLTK_PREFIX/include"
# export PKG_CONFIG_PATH="$BREW_TCLTK_PREFIX/lib/pkgconfig"
# export TCL_LIBRARY="$BREW_TCLTK_PREFIX/lib"
# export TK_LIBRARY="$BREW_TCLTK_PREFIX/lib"
# export PATH="$BREW_TCLTK_PREFIX/bin:$PATH"
# export DYLD_LIBRARY_PATH="$BREW_TCLTK_PREFIX/lib:$DYLD_LIBRARY_PATH"

# --- Python Virtualenv auto-activation ---
if [ -f ".venv/bin/activate" ]; then
    source .venv/bin/activate
fi

cd() {
  builtin cd "$@"
  if [ -f ".venv/bin/activate" ]; then
    source .venv/bin/activate
  fi
}