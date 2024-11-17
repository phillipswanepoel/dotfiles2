#!/bin/bash

# Stow home files
stow -t ~ home

# Stow /etc/ files as root
sudo stow -t /etc etc

