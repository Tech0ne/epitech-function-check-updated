#!/bin/bash

echo "Installing requirements"

# ubuntu (class)
sudo apt-get update 2>/dev/null
sudo apt-get -y install gdb 2>/dev/null
sudo apt-get -y install python3 2>/dev/null
sudo apt-get -y install python3-pip 2>/dev/null

# fedora (berk)
sudo dnf makecache --refresh
sudo dnf -y install gdb 2>/dev/null
sudo dnf -y install python3 2>/dev/null
sudo dnf -y install python3-pip 2>/dev/null

pip3 install rich

echo "Requirements installed"

rm -rf ~/.local/share/function-check/
mkdir -p ~/.local/share/function-check/
mkdir -p ~/.local/bin/
cp gdb_script.py ~/.local/share/function-check/
cp epitech_function_checker ~/.local/bin/
chmod +x ~/.local/bin/epitech_function_checker

echo "Copy the sample file \"allowed_functions.json\" on your project and type the command \"function_checker {binary name}\" to make a check of your binary !"
