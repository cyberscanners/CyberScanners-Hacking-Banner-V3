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

# Loading animation
echo -ne "LOADING" | lolcat
for i in {1..12}; do 
    echo -n "." | lolcat
    sleep 0.2
done
echo -e "\nSYSTEM STABLE ✅" | lolcat
sleep 1

# Countdown before proceeding
echo -e "\n🌀 Starting in:" | lolcat
for i in {5..1}; do 
    echo -e "⏳ $i" | lolcat 
    sleep 0.5
done

# Simulated memory flood animation
echo -e "\n💣 Simulating Memory Flood..." | lolcat
MEMBAR="▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓"
for i in {1..10}; do
    COUNT=$(( i * 5 ))
    PERCENT=$(( i * 10 ))
    echo -ne "${MEMBAR:0:$COUNT}" | lolcat
    echo "  ${PERCENT}%" | lolcat
    sleep 0.3
done

figlet "OVERLOAD!" | lolcat
sleep 1

# Display real-time system statistics
echo -e "\n📊 Real-Time System Stats\n" | lolcat
echo -e "🔬 RAM Usage:" | lolcat
free -h | lolcat

echo -e "\n💽 Disk Space:" | lolcat
df -h | lolcat

# Simulated Hacker AI Logs
echo -e "\n🧠 HACKER AI LOGS:" | lolcat
sleep 0.5
echo " > Injecting payload..." | lolcat; sleep 0.4
echo " > Bypassing firewall..." | lolcat; sleep 0.4
echo " > Exploiting port 4444..." | lolcat; sleep 0.4
echo " > Decrypting data stream..." | lolcat; sleep 0.4
echo " > Access Granted ✔️" | lolcat

# ========== TYPEWRITER FUNCTION ==========
typewriter() {
  text="$1"
  delay="${2:-0.05}"
  for (( i=0; i<${#text}; i++ )); do
    printf "${CYAN}${text:$i:1}${NC}"
    sleep "$delay"
  done
  echo ""
}

# ========== LOADING BAR ==========
loading_bar() {
  msg="$1"
  echo -ne "${YELLOW}${msg} ["
  for i in {1..20}; do
    echo -ne "#"
    sleep 0.05
  done
  echo -e "]${NC}"
  sleep 0.5
}

# ========== COUNTDOWN (4, 2, 1) ==========
countdown() {
  echo -e "\n${RED}Commencing Black Hat Simulation in:${NC}"
  sleep 1
  for i in 4 2 1; do
    clear
    echo -e "${RED}"
    figlet "$i" | lolcat
    sleep 1
  done
  echo -e "\n"
}

# ========== SECTION TITLE ==========
section() {
  echo -e "\n${GREEN}[+ ${1} +]${NC}\n"
  sleep 1
}

# ========== BOOT SEQUENCE ==========
clear
typewriter "Booting into Black Hat Hacker Training OS..." 0.04
sleep 0.5
loading_bar "Injecting Root Access"
loading_bar "Spoofing MAC Address"
loading_bar "Loading Terminal Modules"
countdown

# ========== SYSTEM READY ==========
clear
typewriter "[✔] SYSTEM READY. HACKING INTERFACE UNLOCKED." 0.04
sleep 0.5

echo -e "${GREEN}===============ᴄʏʙᴇʀ ʙʟᴀᴄᴋ ʟɪᴏɴ====================="
echo -e "${GREEN}____________________________________________________"
sleep 0.5

figlet -f slant "CYBER" | lolcat
figlet -f slant "SCANNERS" | lolcat
sleep 0.5

typewriter ">> DEVELOPER: CYBER BLACK LION <<" 0.04
sleep 0.8

# ========== SYSTEM INFO ==========
section "System Identity"
echo -e "${YELLOW}• User ID          : $(whoami)"
sleep 0.5
echo -e "${YELLOW}• IP Address       : $(curl -s ifconfig.me)"
sleep 0.5
echo -e "${YELLOW}• Architecture     : $(dpkg --print-architecture)"
sleep 0.5
echo -e "${YELLOW}• MAC & Network    : $arp)"
sleep 1

# ========== HACKER STATUS ==========
echo -e "\e[1;31m"
typewriter "[+] Hacker Identity: Verified" 0.03
typewriter "[+] Mask: Activated" 0.03
typewriter "[+] Country: Sri Lanka" 0.03
echo -e "\e[0m"
sleep 1

# ========== ANONYMOUS SLOGANS ==========
echo -e "\e[1;36m"
typewriter "  ~ We Are Black Hat ~" 0.04
typewriter "  ~ We Are Legends ~" 0.04
typewriter "  ~ We Do Not Forgive ~" 0.04
typewriter "  ~ We Do Not Forget ~" 0.04
typewriter "  ~ Expect Us ~" 0.04
echo -e "\e[0m"

# ========== END BANNER ==========
echo -e "${GREEN}____________________________________________________"
echo -e "${GREEN}===============ᴄʏʙᴇʀ ʙʟᴀᴄᴋ ʟɪᴏɴ====================="
