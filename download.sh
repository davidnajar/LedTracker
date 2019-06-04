#!/usr/bin/env bash
echo Downloading latest binaries
curl -s https://api.github.com/repos/davidnajar/LedTracker/releases/latest \
| grep "browser_download_url.*tgz" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -i -


echo Uncompressing
mkdir ./ledtracker
tar zxvf ledtracker.tgz -C /ledtracker
echo Done! Run  sudo install.sh to install prerequisites
