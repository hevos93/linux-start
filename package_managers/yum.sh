#!/bin/bash

PACKAGES=$(cat packages)

sudo dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
sudo dnf install -y epel-release
sudo dnf install -y $PACKAGES
