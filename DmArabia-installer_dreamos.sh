#!/bin/bash -e
# DmArabia Installer v.03
echo deb [trusted=yes] https://github.com/ostende/apt-deb/blob/master/Gemini/Dm920/ ./ > /etc/apt/sources.list.d/dmarabia.list
apt-get update
sleep 3
echo ""
echo "************************"
read -p "Gui Restart? (y/n): " response </dev/tty
if [ "$response" == "y" ]; then
    echo "تمت عملية التثبيت بنجاج"
    echo "جاري عملية اعادة تشغيل الانجما ....شكرا"
    systemctl restart enigma2
else
    echo "لم تتم عملية تثبيث الاضافة بالشكل الصحيح "
fi
echo "... تم التثبيت"
exit 0
