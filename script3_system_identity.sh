#!/bin/bash
# Script 3: Disk and Permission Auditor

# List of important system directories
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# Loop through each directory
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Get permissions, owner, and group
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Get human-readable size
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        # Print directory report
        echo "$DIR => Permissions & Owner: $PERMS | Size: $SIZE"
    else
        echo "$DIR => Directory does not exist on this system"
    fi
done

# Optional: Check a specific software config directory (example: /etc/python)
SOFTWARE_CONF="/etc/python"
if [ -d "$SOFTWARE_CONF" ]; then
    CONF_PERMS=$(ls -ld "$SOFTWARE_CONF" | awk '{print $1, $3, $4}')
    echo "$SOFTWARE_CONF => Permissions & Owner: $CONF_PERMS"
else
    echo "$SOFTWARE_CONF => Config directory does not exist"
fi
