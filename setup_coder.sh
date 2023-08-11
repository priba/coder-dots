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

if ! command -v btm &> /dev/null
then
    cargo install bottom --locked
else
    echo "Skip bottom install"
fi

if ! command -v delta &> /dev/null
then
    cargo install git-delta
else
    echo "Skip Delta install"
fi

if ! command -v dust &> /dev/null
then
    cargo install du-dust
else
    echo "Skip Dust install"
fi
