#!/system/bin/sh
# shellcheck shell=ash

# Runs during install (both Magisk and Magisk-compatible managers
# call this after files are extracted to $MODPATH). Ensures correct
# ownership/perms regardless of what the zip stored them as.

set_perm_recursive "$MODPATH/system/bin" 0 2000 0755 0755
set_perm "$MODPATH/system/etc/speedtest/cacert.pem" 0 0 0644
