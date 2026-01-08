#!/bin/bash
# ===========================================================
# ALL IN ONE PANEL INSTALLER
# Mode By - HyzexDEV
# ===========================================================

# ---------------- COLORS ----------------
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
BLUE='\033[1;34m'
PURPLE='\033[1;35m'
WHITE='\033[1;37m'
GRAY='\033[38;5;245m'
BOLD='\033[1m'
NC='\033[0m'

COLORS=(
'\033[1;31m' '\033[1;32m' '\033[1;33m'
'\033[1;34m' '\033[1;35m' '\033[1;36m'
'\033[38;5;208m' '\033[38;5;205m'
)

rand_color(){ echo -e "${COLORS[$RANDOM % ${#COLORS[@]}]}"; }
pause(){ echo -e "${GRAY}"; read -p "Press Enter to continue..." x; echo -e "${NC}"; }

# ---------------- BANNER ----------------
banner(){
clear
C1=$(rand_color); C2=$(rand_color); C3=$(rand_color)

echo -e "${C3}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "              ${BOLD}All In One Panel Installer${NC}"
echo -e "                   Mode By - HyzexDEV"
echo -e "${C1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo
}

# ---------------- MENU ----------------
menu(){
while true; do
banner
echo -e "${CYAN}────────────── PANEL INSTALL MENU ──────────────${NC}"
echo -e "${YELLOW} 1)${WHITE} Dashboard v3"
echo -e "${YELLOW} 2)${WHITE} FeatherPanel"
echo -e "${YELLOW} 3)${WHITE} Jexactyl"
echo -e "${YELLOW} 4)${WHITE} Payment System"
echo -e "${YELLOW} 5)${WHITE} Pterodactyl"
echo -e "${YELLOW} 6)${WHITE} Reviactyl"
echo -e "${YELLOW} 0)${WHITE} Exit"
echo -e "${CYAN}───────────────────────────────────────────────${NC}"
read -p "Select → " opt

case $opt in
 1)
   bash <(curl -fsSL https://raw.githubusercontent.com/titan-modz/allinone/main/Dashboard-v3.sh)
   pause
 ;;
 2)
   bash <(curl -fsSL https://raw.githubusercontent.com/titan-modz/allinone/main/FeatherPanel.sh)
   pause
 ;;
 3)
   bash <(curl -fsSL https://raw.githubusercontent.com/titan-modz/allinone/main/Jexactyl.sh)
   pause
 ;;
 4)
   bash <(curl -fsSL https://raw.githubusercontent.com/titan-modz/allinone/main/Payment.sh)
   pause
 ;;
 5)
   bash <(curl -fsSL https://raw.githubusercontent.com/titan-modz/allinone/main/pterodactyl.sh)
   pause
 ;;
 6)
   bash <(curl -fsSL https://raw.githubusercontent.com/titan-modz/allinone/main/reviactyl.sh)
   pause
 ;;
 0)
   echo -e "${GREEN}Exiting...${NC}"
   exit 0
 ;;
 *)
   echo -e "${RED}Invalid option!${NC}"
   pause
 ;;
esac
done
}

menu
