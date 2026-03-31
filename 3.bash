#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Aryaman | Course: Open Source Software

# --- Directories to audit ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "--------------------------------"

for DIR in "${DIRS[@]}"; do
  if [ -d "$DIR" ]; then
    # Permissions, owner, group
    PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
    # Disk usage (human-readable)
    SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
    echo "$DIR => Permissions: $PERMS | Size: $SIZE"
  else
    echo "$DIR does not exist on this system"
  fi
done