#!/data/data/com.termux/files/usr/bin/bash

# === COLORS ===
RED='\e[91m'
WHITE='\e[97m'
GREEN='\e[92m'
YELLOW='\e[93m'
CYAN='\e[96m'
GRAY='\e[90m'
NC='\e[0m'

# === PASSWORD SETUP ===
correct_password="cyber2002"
correct_hash=$(echo -n "$correct_password" | sha256sum | awk '{print $1}')

# === BANNER TEXT ===
banner_text=$(cat << "EOF"


 ██████╗██╗   ██╗██████╗ ███████╗██████╗
██╔════╝╚██╗ ██╔╝██╔══██╗██╔════╝██╔══██╗
██║      ╚████╔╝ ██████╔╝█████╗  ██████╔╝
██║       ╚██╔╝  ██╔══██╗██╔══╝  ██╔══██╗
╚██████╗   ██║   ██████╔╝███████╗██║  ██║
 ╚═════╝   ╚═╝   ╚═════╝ ╚══════╝╚═╝  ╚═╝

███████╗ ██████╗ █████╗ ███╗   ██╗███╗   ██╗███████╗██████╗ ███████╗
██╔════╝██╔════╝██╔══██╗████╗  ██║████╗  ██║██╔════╝██╔══██╗██╔════╝
███████╗██║     ███████║██╔██╗ ██║██╔██╗ ██║█████╗  ██████╔╝███████╗
╚════██║██║     ██╔══██║██║╚██╗██║██║╚██╗██║██╔══╝  ██╔══██╗╚════██║
███████║╚██████╗██║  ██║██║ ╚████║██║ ╚████║███████╗██║  ██║███████║
╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝╚══════╝

EOF
)
echo

echo -e "${GREEN}    DEVALOPER CYBER BLACK LION ${NC}"

# === BANNER BLINKING FOR 7 SECONDS ===
start_time=$(date +%s)
while true; do
    current_time=$(date +%s)
    elapsed=$((current_time - start_time))
    if [ $elapsed -ge 7 ]; then
        break
    fi
    clear
    echo -e "\e[5;91m$banner_text\e[0m"  # Blink in RED
    sleep 0.4
    clear
    echo -e "\e[5;97m$banner_text\e[0m"  # Blink in WHITE
    sleep 0.4
done

# === CLEAR FOR PASSWORD ===
clear
echo -e "${WHITE}     BLACK HAT CYBER HACKING - ACCESS TERMINAL${NC}"

# === GET USERNAME ===
echo -ne "${CYAN}[+] Enter your hacker Name: ${NC}"
read username
echo -e "${GREEN}[*] Hello $username!${NC}"

# === PASSWORD CHECK ===
tries=0
max_tries=3
while [[ $tries -lt $max_tries ]]; do
    IFS= read -rs -p "$(echo -e "${GREEN}[>] Enter secret password to access system: ${NC}")" password
    echo
    typed_hash=$(echo -n "$password" | sha256sum | awk '{print $1}')

    if [[ "$typed_hash" == "$correct_hash" ]]; then
        echo -e "${GREEN}[✔] Access granted. Welcome, $username!${NC}"
        break
    else
        ((tries++))
        echo -e "${RED}[!] Incorrect password. Attempts left: $((max_tries - tries))${NC}"
    fi
done

if [[ $tries -eq $max_tries ]]; then
    echo -e "${RED}[X] ACCESS DENIED. SYSTEM LOCKED.${NC}"
    sleep 1
    echo -e "${YELLOW}[*] Redirecting to Android home screen...${NC}"
    sleep 1
    am start --user 0 -a android.intent.action.MAIN -c android.intent.category.HOME >/dev/null 2>&1
    exit
fi

# === INIT LOADING EFFECT ===
echo -e "${CYAN}[*] Connecting to CYBERNET mainframe..."
sleep 0.5
echo -e "${CYAN}[*] Bypassing security protocols..."
sleep 0.5
echo -e "${CYAN}[*] Launching virtual exploit grid..."
sleep 0.5

# === LOADING BAR ===
bar=""
for i in {1..40}; do
  bar+="#"
  printf "\r${YELLOW}[LOADING] ${bar}%-40s" ""
  sleep 0.04
done
echo -e "\n${GREEN}[✔] Core systems online.${NC}"
sleep 0.5

# === GLITCHY COUNTDOWN ===
echo -e "\n${RED}[!] CYBER WARFARE SIMULATION INCOMING...${NC}"
sleep 0.7
for i in {10..1}; do
  echo -ne "${RED}>>> $(shuf -i 100-999 -n 1) <<< ${WHITE}$i${RED} <<< $(shuf -i 100-999 -n 1) <<<${NC}\r"
  sleep 0.3
done

# === MEMORY FILL EFFECT ===
echo -e "\n${GRAY}[*] Simulating RAM memory overload...${NC}"
for i in $(seq 0 4 100); do
    filled=$(printf "%0.s█" $(seq 1 $((i / 4))))
    empty=$(printf "%0.s " $(seq 1 $(((100 - i) / 4))))
    echo -ne "${CYAN}[MEMORY] [${filled}${empty}] ${i}%%${NC}\r"
    sleep 0.08
done
echo -e "\n${GREEN}[✔] Memory filled. Payload injected.${NC}"
sleep 0.8

# === FINAL SCENE ===
echo -e "\n${YELLOW}[•] Virtual environment secured."
sleep 0.5
echo -e "${YELLOW}[•] Root shell injected."
sleep 0.5
echo -e "${RED}[!] SYSTEM OVERRIDE INITIATED...${NC}"
sleep 1

# === FINAL BANNER BLINK FOR 5 SECONDS ===
start_time=$(date +%s)
while true; do
    current_time=$(date +%s)
    elapsed=$((current_time - start_time))
    if [ $elapsed -ge 5 ]; then
        break
    fi
    clear
    echo -e "\e[5;91m$banner_text\e[0m"
    sleep 0.5
    clear
    sleep 0.3
done

# === RETURN TO TERMINAL ===
clear
echo -e "${GREEN}[✔] SYSTEM READY. HACKING INTERFACE UNLOCKED.${NC}"

echo -e "${GREEN}===============ᴄʏʙᴇʀ ʙʟᴀᴄᴋ ʟɪᴏɴ====================="
echo -e "${GREEN}____________________________________________________"

echo -e "${YELLOW}• user id" :
whoami
echo -e "${YELLOW}• usr ip address" :
curl ifconfig.me
echo -e "${YELLOW} • usr architecture" :
dpkg --print-architecture
echo -e "${YELLOW}• wifi connection system and mac address, wifi broadcast"
arp

echo -e "${GREEN}____________________________________________________"
echo -e "${GREEN}===============ᴄʏʙᴇʀ ʙʟᴀᴄᴋ ʟɪᴏɴ====================="
