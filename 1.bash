#!/bin/bash
# Script 1: System Identity Report
# Author: Aryaman | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Aryaman"
SOFTWARE_CHOICE="Linux"

# --- System info ---
# Using safe commands that work in most online compilers
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')
KERNEL=$(uname -r)
USER_NAME=$(echo $USER)   # safer than whoami in restricted shells
HOME_DIR=$HOME
UPTIME="Uptime not available in sandbox"
DATE=$(date)

# --- Display ---
echo "__________________________________________"
echo " Open Source Audit - $STUDENT_NAME"
echo "=========================================="
echo "Distribution : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME_DIR"
echo "Uptime       : $UPTIME"
echo "Date/Time    : $DATE"
echo "License      : This system is covered under the GNU General Public License (GPL)."
echo "=========================================="