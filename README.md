# Epitech Function Checker

---

## What is it ?

Epitech function checker is a sample python script that aim to check the syscalls in a binary, and display them in a more cool way.

It can be used for a variety of cases, including hiding syscalls, for pentest, but it's main usage is to help Epitech (and 42, I wont be mad ;) ) students to don't lose points for stupid mistakes, by leaving a simple printf somewhere, for example.

## Installation

To install this script, simply clone it, and run the `install.sh` file.

Note that the automatic installation currently work only for Ubuntu and Fedora.

If you are using another distribution, please install (with a package manager) gdb, python3 and python3-pip. Then, install using pip3 command the module "rich" (`pip3 install rich`).

Then, the "function_checker" command should be available.

## Usage

If you just want a nice looking list of syscalls used in your binary, simply run :
    function_checker {your binary}

If you want a more advanced usage, with rating, warnings and more, you can add a "allowed_functions.json" to your current directory.

See the sample file for the format.

## Responsabilities

I do not take any responsabilities for any sh*t you could do with this script. (IDK what you could do, but still, I don't want to be accused because you cheated, or anything).

## Thanks

I would like to put that the original project comes from [here](https://github.com/Thyodas/epitech-banned-functions).

Thanks to [Thyodas](https://github.com/Thyodas/) for his original project, quite intresting, I just changed some functionalities.