#!/bin/bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp configs/zshConfig $HOME/.zshrc
cp configs/neofetchConfig $HOME/.config/neofetch/config.conf
