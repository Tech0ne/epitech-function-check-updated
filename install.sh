#!/bin/bash

echo "Installing requirements"

if [ -f /etc/os-release ]; then
    . /etc/os-release
    OS=$NAME
    VER=$VERSION_ID
elif type lsb_release >/dev/null 2>&1; then
    OS=$(lsb_release -si)
    VER=$(lsb_release -sr)
elif [ -f /etc/lsb-release ]; then
    . /etc/lsb-release
    OS=$DISTRIB_ID
    VER=$DISTRIB_RELEASE
elif [ -f /etc/debian_version ]; then
    OS=Debian
    VER=$(cat /etc/debian_version)
fi

case "$OS" in
    Ubuntu )
        sudo apt-get update
        sudo apt-get install -y gdb python3 python3-pip
        ;;
    Fedora )
        sudo dnf makecache --refresh
        sudo dnf install -y gdb python3 python3-pip
        ;;
    * )
        ;;
esac

sudo pip3 install -r requirements.txt

echo "Requirements installed"

sudo cp function_checker /usr/bin/function_checker
sudo chmod +x /usr/bin/function_checker

echo "Copy the sample file \"allowed_functions.json\" on your project and type the command \"function_checker {binary name}\" to make a check of your binary !"
