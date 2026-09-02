#!/usr/bin/env bash

VIM_PATH="/home/$USER/.vimrc"

if [[ -f $VIM_PATH  ]];then
    read -n 1 -p ".vimrc file configuration detected. Overwrite it? (y/n) " ans
    echo
    if [[ $ans = "y" || $ans = "Y" ]];then
        cp .vimrc $VIM_PATH
    fi
else
    cp .vimrc $VIM_PATH
fi

if command -v python3 &>/dev/null && command -v pip &>/dev/null;then
    echo "Installing python linters dependencies"
    rc=0
    res=$(pip install -r requirements.txt 2>&1) || rc=$?
    if [[ $res = **"--break-system-packages"**  ]];then
        echo "Need to use --break-system-packages as this is a pre-compiled version of python"
        read -n 1 -p "Allow for installation with --break-system-packages option? (y/n) " ans
        echo
        if [[ $ans = "y" || $ans = "Y" ]];then
            pip install -r requirements.txt --break-system-packages 
        else
            echo "Pyhton linters installation canceled"
        fi
    fi
fi


