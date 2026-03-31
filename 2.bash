#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Aryaman | Course: Open Source Software

# --- Variables ---
SOFTWARE="git"   # You can change this to any FOSS package like 'vim', 'nano', 'python3'

# --- Check if software is installed ---
if command -v $SOFTWARE >/dev/null 2>&1; then
    VERSION=$($SOFTWARE --version | head -n 1)
    echo "$SOFTWARE is installed."
    echo "Version: $VERSION"
else
    echo "$SOFTWARE is NOT installed on this system."
fi

# --- Case statement for description ---
case $SOFTWARE in
    git)
        echo "Description: Git is a distributed version control system used for tracking changes in source code."
        ;;
    vim)
        echo "Description: Vim is a highly configurable text editor built to enable efficient text editing."
        ;;
    nano)
        echo "Description: Nano is a simple, user-friendly text editor for Unix-like systems."
        ;;
    python3)
        echo "Description: Python is a high-level programming language widely used for scripting and application development."
        ;;
    *)
        echo "Description: No description available for $SOFTWARE."
        ;;
esac

# --- Config directory check (safe placeholder) ---
CONFIG_DIR="/etc/$SOFTWARE"
if [ -d "$CONFIG_DIR" ]; then
    echo "Config directory exists: $CONFIG_DIR"
    ls -ld "$CONFIG_DIR"
else
    echo "Config directory does not exist for $SOFTWARE."
fi