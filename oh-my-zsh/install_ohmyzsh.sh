#!/bin/bash

# Install zsh and oh-my-zsh
sudo apt install git-core zsh
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh
sudo apt install fonts-powerline

# Replace zsh theme from to 'agnoster'
sed -i 's/robbyrussell/agnoster/g' ~/.zshrc

# Change main prompt display
sed -i 's/prompt_context/#prompt_context/g' ~/.oh-my-zsh/themes/agnoster.zsh-theme
sed -i '268s/.*/PROMPT='\$(build_prompt)'/g' ~/.oh-my-zsh/themes/agnoster.zsh-theme

# Source .zshrc file
source ~/.zshrc

