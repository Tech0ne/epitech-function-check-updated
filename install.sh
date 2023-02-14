#!/bin/bash

mkdir -p ~/.local/share/function-check/
mkdir -p ~/.local/bin/
cp gdb_script.py ~/.local/share/function-check/
cp function_checker ~/.local/bin/
chmod +x ~/.local/bin/function_checker

echo "Copy the sample file \"allowed_functions.json\" on your project and type the command \"function_checker {binary name}\" to make a check of your binary !"
