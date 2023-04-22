#!/bin/sh
#Update and Install Apt Packages
LIST_OF_APPS="i3 vim tmux ninja-build gettext cmake unzip curl git steghide"

sudo apt update
sudo apt install -y $LIST_OF_APPS


#Clone, Build, and Install Neovim
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb

#Clone, and Install Neovim Config
git clone https://github.com/JnathanCarter/Nvim-Config.git ~/.config/nvim

#Install Tmux Config
cp .tmux.conf ~
