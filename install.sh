# uv
curl -LsSf https://astral.sh/uv/install.sh | sh

# node
curl -fsSL https://fnm.vercel.app/install | bash
export PATH="$HOME/.fnm" && eval "$(fnm env)"
fnm install --lts

# p10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k