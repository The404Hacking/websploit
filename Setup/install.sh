#!/bin/bash
# Websploit Framework Installation Script
# The404Hacking - Digital Security ReSearch Group
# WebSploit Setup Created By Amir Hossein Yeganeh (Sir.4m1R)
# Report Bug : The404Hacking.Tean@Gmail.Com
# Telegram Channel: @The404Hacking
if [[ $EUID -ne 0 ]]; then
   echo "You must be root to run this script. Aborting...";
   exit 1;
fi
echo "Welcome To Websploit Framework Install Script"
echo "Installing ..."
sleep 3
cp wsf-300.tar.gz /usr/share
cd /usr/share
tar -xf wsf-300.tar.gz
chmod 755 /usr/share/websploit/*
chmod 755 /usr/share/websploit/modules*
chmod 755 /usr/share/websploit/modules/fakeupdate/*
chmod 755 /usr/share/websploit/core/*
ln -s /usr/share/websploit/websploit /usr/bin/websploit
rm -rf /usr/share/wsf-300.tar.gz
echo "Installed Directory : /usr/share/websploit"
echo "Run From Terminal : sudo websploit"
echo "Installation Complete."
