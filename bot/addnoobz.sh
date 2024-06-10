#!/bin/bash
clear
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "      °NOOBZVPN'S CREATE°            "
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
read -p "Username: " user
read -p "Password: " pass
read -p "Exp (0 for unlimited days):" exp
read -p "IP LIMIT " ip

if [ ! -e /etc/sf/limit/noobs/ip/ ]; then
  mkdir -p /etc/sf/limit/noobs/ip/
fi
echo "$ip" > /etc/sf/limit/noobs/ip/$user
noobzvpns --add-user $user $pass --expired-user $user $exp
expi=`date -d "$exp days" +"%Y-%m-%d"`
echo -e "### $user $pass $expi" >> /etc/xray/noob
