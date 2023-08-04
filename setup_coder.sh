#!/bin/bash

if ! command -v macchina &> /dev/null
then
    cargo install macchina
else
    echo "Skip Macchina install"
fi

if ! command -v exa &> /dev/null
then
    cargo install exa
else
    echo "Skip Exa install"
fi

if ! command -v delta &> /dev/null
then
    cargo install git-delta
else
    echo "Skip Delta install"
fi
