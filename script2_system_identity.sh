#!/bin/bash

# -------------------------------
# Check if Python is installed
# -------------------------------

PACKAGE="python3"  # You can also use "python" depending on your system

echo "------------------------------------------"

# Check if system is Debian-based
if command -v dpkg > /dev/null 2>&1
then
    INFO=$(dpkg -l | grep "^ii" | grep "$PACKAGE")
    
    if [ -n "$INFO" ]
    then
        VERSION=$(dpkg -l | grep "^ii" | grep "$PACKAGE" | awk '{print $3}')
        echo "Package '$PACKAGE' is installed."
        echo "Version: $VERSION"
    else
        echo "Package '$PACKAGE' is NOT installed."
        exit 1
    fi

# Otherwise check if RPM-based
elif command -v rpm > /dev/null 2>&1
then
    INFO=$(rpm -qi "$PACKAGE" 2>/dev/null | grep "Version")
    
    if [ -n "$INFO" ]
    then
        VERSION=$(rpm -qi "$PACKAGE" | grep "Version" | awk '{print $3}')
        echo "Package '$PACKAGE' is installed."
        echo "Version: $VERSION"
    else
        echo "Package '$PACKAGE' is NOT installed."
        exit 1
    fi
else
    echo "Unsupported package manager."
    exit 1
fi

echo "------------------------------------------"

# Case statement for description
case $PACKAGE in
    python* )
        echo "Description: Python is a high-level, interpreted programming language widely used for automation, web development, data analysis, AI, and more."
        ;;
    *)
        echo "Description: General software package installed on the system."
        ;;
esac

echo "------------------------------------------"
echo "Software check complete."
