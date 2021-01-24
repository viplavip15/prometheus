#!/bin/bash
RED='\033[1;31m'
GREEN='\033[1;32m'
BLUE='\033[1;36m'
YELLOW='\033[1;33m'
NONE='\033[0m'
RED0='\033[0;31m'
GREEN0='\033[0;32m'
PROMETHEUS="$BLUE--------------------------------------------------------------------$NONE$GREEN
    0000  0000  00000 0    0 00000 00000 0   0 00000 0   0 00000
    0   0 0   0 0   0 00  00 0       0   0   0 0     0   0 0     
    0000  0000  0   0 0 00 0 00000   0   00000 00000 0   0 00000 
    0     0  0  0   0 0    0 0       0   0   0 0     0   0     0 
    0     0   0 00000 0    0 00000   0   0   0 00000 00000 00000$NONE
$BLUE-------------------------------------------------------------------- $NONE"
PROMETHEUS2="update script"  
clear
echo -e "$PROMETHEUS"
sleep 0.2
echo
DIRP=`pwd`
export DIRP
# ÐŸÑ€Ð¾Ð²ÐµÑ€ÑÐµÐ¼ Ð½Ð°Ð»Ð¸Ñ‡Ð¸Ðµ Ð´Ð¸Ñ€ÐµÐºÑ‚Ð¾Ñ€Ð¸Ð¹
rm -R $DIRP/scripts &>/dev/null
mkdir $DIRP/scripts
rm -R $DIRP/configs &>/dev/null
mkdir $DIRP/configs
rm -R $DIRP/files &>/dev/null
mkdir $DIRP/files
rm -R $DIRP/logs &>/dev/null
mkdir $DIRP/logs

   echo -e "GET http://google.com HTTP/1.0\n\n" | nc google.com 80 > /dev/null 2>&1

   if [ $? -eq 0 ]; then
       internet_connection=ok
   else
       internet_connection=error
   fi
   if [ "$internet_connection" == "error" ]
   then
      echo -e "$RED Ð’Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ Ð½ÐµÑ‚ ÑÐ¾ÐµÐ´Ð¸Ð½ÐµÐ½Ð¸Ñ Ñ Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ð¾Ð¼! $NONE"
      while true; do
         read -p " Ð’ÑÐµ Ñ€Ð°Ð²Ð½Ð¾ Ð¿Ñ€Ð¾Ð´Ð¾Ð»Ð¶Ð¸Ñ‚ÑŒ? " yn
         case $yn in
            [Yy]* ) echo -e "$NONE"; break;;
            [Nn]* ) echo -e "$NONE"; exit;;
                * ) echo -e " ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð° Ð²Ð²ÐµÐ´Ð¸Ñ‚Ðµ yes Ð¸Ð»Ð¸ no.";;
         esac
      done
   fi

   echo -e "GET http://pm.freize.net HTTP/1.0\n\n" | nc pm.freize.net 80 > /dev/null 2>&1

   if [ $? -eq 0 ]; then
       internet_connection2=ok
   else
       internet_connection2=error
   fi

   if [ "$internet_connection2" == "error" ]
   then
      echo "$RED Ð£Ð´Ð°Ð»ÐµÐ½Ð½Ñ‹Ð¹ ÑÐµÑ€Ð²ÐµÑ€ Ð½Ðµ Ð¾Ñ‚Ð²ÐµÑ‡Ð°ÐµÑ‚! $NONE"
      while true; do
         read -p " Ð’ÑÐµ Ñ€Ð°Ð²Ð½Ð¾ Ð¿Ñ€Ð¾Ð´Ð¾Ð»Ð¶Ð¸Ñ‚ÑŒ? " yn
         case $yn in
            [Yy]* ) echo -e "$NONE"; break;;
            [Nn]* ) echo -e "$NONE"; exit;;
                * ) echo -e " ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð° Ð²Ð²ÐµÐ´Ð¸Ñ‚Ðµ yes Ð¸Ð»Ð¸ no.";;
         esac
      done
   fi
   while true; do
      #Ð¿Ñ€Ð¾Ð²ÐµÑ€ÑÐµÐ¼ Ð·Ð°Ð²Ð¸ÑÐ¸Ð¼Ð¾ÑÑ‚Ð¸ Ð¸ Ð²Ñ‹Ñ…Ð¾Ð´Ð¸Ð¼ ÐµÑÐ»Ð¸ Ð²ÑÐµ ÑƒÑÑ‚Ð°Ð½Ð¾Ð²Ð»ÐµÐ½Ð¾
      dpkg -s ca-certificates build-essential gawk texinfo pkg-config gettext automake libtool bison flex zlib1g-dev libgmp3-dev libmpfr-dev libmpc-dev git zip sshpass mc curl python expect bc telnet openssh-client tftpd-hpa libid3tag0-dev gperf libltdl-dev autopoint >/dev/null 2>&1 && break 
      echo -e "$YELLOW Ð£ÑÑ‚Ð°Ð½Ð°Ð²Ð»Ð¸Ð²Ð°ÐµÐ¼ ÐŸÐž, Ñ‚Ñ€ÐµÐ±ÑƒÐµÑ‚ÑÑ Ð²Ð²ÐµÑÑ‚Ð¸ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ Ð¾Ñ‚ $NONE"
      echo -e "$YELLOW Ð²Ð°ÑˆÐµÐ¹ ÑƒÑ‡ÐµÑ‚Ð½Ð¾Ð¹ Ð·Ð°Ð¿Ð¸ÑÐ¸ Ð² Linux. $NONE"
      sudo apt-get update
      sudo apt-get -y --allow install ca-certificates build-essential gawk texinfo pkg-config gettext automake libtool bison flex zlib1g-dev libgmp3-dev libmpfr-dev libmpc-dev git zip sshpass mc curl python expect bc telnet openssh-client tftpd-hpa libid3tag0-dev gperf libltdl-dev  autopoint
   done
   wget -O update.tar http://pm.freize.net/scripts/update.tar &>/dev/null
   wget -O files/loki.tar http://pm.freize.net/scripts/loki.tar &>/dev/null
   tar -xvf $DIRP/files/loki.tar configs/git.sh -C configs >/dev/null 2>&1
   tar -xvf $DIRP/files/loki.tar configs/uboot.sh -C configs >/dev/null 2>&1
   tar -xvf update.tar
   rm -f update.tar
   ./scripts/up2.sh
   echo -e "$BLUE Ð¡ÐºÑ€Ð¸Ð¿Ñ‚Ñ‹:$NONE$GREEN      OK $NONE"
   sleep 0.1
   exec ./start.sh