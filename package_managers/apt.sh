#!/bin/bash

PACKAGES=$(cat packages)

sudo apt install -y $PACKAGES
