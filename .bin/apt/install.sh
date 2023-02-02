#!/bin/bash

# パッケージのインストール
apt update
apt upgrade
apt install -y curl wget vim git zsh powerline fonts-powerline tmux
apt autoremove

# oh-my-zshのインストール
echo -e "y\nexit\n" | sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zshプラグインの追加
zsh -c "source ~/.zshrc; git clone https://github.com/zsh-users/zsh-autosuggestions.git \$ZSH_CUSTOM/plugins/zsh-autosuggestions"
zsh -c "source ~/.zshrc; git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
zsh -c "source ~/.zshrc; git clone https://github.com/zsh-users/zsh-completions \$ZSH_CUSTOM/plugins/zsh-completions"

# tpmのインストール
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
