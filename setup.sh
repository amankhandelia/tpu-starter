#!/bin/bash

# Confirm that the script is running on the host
uname -a

# Install common packages
export DEBIAN_FRONTEND=noninteractive
sudo apt-get update -y -qq
sudo apt-get upgrade -y -qq
sudo apt-get install -y -qq golang neofetch zsh mosh byobu aria2

# Install Python 3.10
sudo apt-get install -y -qq software-properties-common
sudo add-apt-repository -y ppa:deadsnakes/ppa
sudo apt-get install -y -qq python3.10-full python3.10-dev

# Install Oh My Zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
# sudo chsh $USER -s /usr/bin/zsh

# install git lfs
sudo apt-get install git-lfs

# Change timezone
# timedatectl list-timezones  # list timezones
sudo timedatectl set-timezone Asia/Calcutta  # change to your timezone

# install poetry
curl -sSL https://install.python-poetry.org | python3.10 -
