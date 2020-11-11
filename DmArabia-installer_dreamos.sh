#!/bin/bash -e
# DmArabia Installer v.03
echo deb [trusted=yes] https://github.com/ostende/apt-deb/blob/master/Gemini/Dm920/apt/ ./ > /etc/apt/sources.list.d/dmarabia.list
apt-get update
sleep 3
echo ""
echo "************************"
read -p "Gui Restart? (y/n): " response </dev/tty
if [ "$response" == "y" ]; then
    echo "************************************"
    echo "         Ostende DmArabia           "
    echo "************************************"
    systemctl restart enigma2
else
    echo "************************************"
    echo "       something went wrong         "
    echo "************************************"
fi
echo "*** **** ***** **** ****"
echo "***     done ...    ****"
echo "***                 ****"
echo "*** **** ***** **** ****"
exit 0
