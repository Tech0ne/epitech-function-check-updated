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

sudo pip3 install rich

echo "Requirements installed"

rm -rf /etc/function-check/
mkdir -p /etc/function-check/
cp gdb_script.py /etc/function-check/
cp epitech_function_checker /usr/bin/
chmod +x /usr/bin/epitech_function_checker

echo "Copy the sample file \"allowed_functions.json\" on your project and type the command \"function_checker {binary name}\" to make a check of your binary !"
