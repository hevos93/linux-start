#!/bin/bash

PACKAGES=$(cat packages)

sudo zypper in -y $PACKAGES
