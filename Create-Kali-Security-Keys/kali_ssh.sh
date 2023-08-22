#!/bin/bash

# This file is made to replace SSH keys from default to a new generation.

# Move the default Kali ssh keys to a new folder
cd /etc/ssh/
mkdir default_kali_keys
mv ssh_host* default_kali_keys/

# Regenerate the Keys
dpkg-reconfigure openssh-server

# Compare new key hashes to the hashes before regeneration
md5sum ssh_host_*
cd default_kali_keys/
md5sum *

echo "SCRIPT FINISHED"