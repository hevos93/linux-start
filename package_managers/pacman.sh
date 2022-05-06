#!/bin/bash

PACKAGES=$(cat packages)
sudo pacman -S --noconfirm $PACKAGES
