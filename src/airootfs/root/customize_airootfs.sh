#!/usr/bin/env bash

set -e

pacman-key --init
pacman-key --add /usr/share/pacman/keyrings/virtux-linux-lite.gpg
pacman-key --lsign-key 73D9750FD0E63604DCD24BB28B10A1755F658735
