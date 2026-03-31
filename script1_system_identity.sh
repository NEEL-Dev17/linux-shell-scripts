#!/bin/bash

# -------------------------------
# Linux Welcome Screen Script
# -------------------------------

# Fetch system information using command substitution

DISTRO=$(grep "^PRETTY_NAME=" /etc/os-release | cut -d= -f2 | tr -d '"')
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date)

LICENSE="GNU General Public License (GPL)"

# Display formatted welcome screen

echo "==========================================="
echo "        WELCOME TO YOUR LINUX SYSTEM       "
echo "==========================================="
echo ""
echo "Distribution : $DISTRO"
echo "Kernel Version : $KERNEL"
echo ""
echo "Logged-in User : $USER_NAME"
echo "Home Directory : $HOME_DIR"
echo ""
echo "System Uptime : $UPTIME"
echo "Current Date & Time : $CURRENT_DATE"
echo ""
echo "This operating system is covered under the:"
echo "$LICENSE"
echo ""
echo "==========================================="
echo "         Have a productive session!        "
echo "==========================================="
