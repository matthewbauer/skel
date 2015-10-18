#!/bin/sh

if [ ! -e /nix ]
then
  ~/proot -b ~/nix:/nix -b /home/mbauer/passwd:/etc/passwd zsh
  exit
fi

if [ -e /home/mbauer/.nix-profile/etc/profile.d/nix.sh ]
then
  . /home/mbauer/.nix-profile/etc/profile.d/nix.sh
fi # added by Nix installer

if [ -z $TMUX ]
then
  tmux new-session -A -s main
  exit
fi
