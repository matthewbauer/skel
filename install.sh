#!/bin/sh

wget http://portable.proot.me/proot-$(uname -m) -O ~/proot

curl https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
curl https://nixos.org/nix/install | sh
curl http://j.mp/spf13-vim3 | sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
