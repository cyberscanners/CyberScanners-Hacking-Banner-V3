#!/data/data/com.termux/files/usr/bin/bash

# ========== Colors ==========
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
NC='\033[0m'

# ========== Typewriter ==========
typewriter() {
  text="$1"
  delay="${2:-0.05}"
  for (( i=0; i<${#text}; i++ )); do
    printf "${CYAN}${text:$i:1}${NC}"
    sleep "$delay"
  done
  echo ""
}

# ========== Loading Bar ==========
loading_bar() {
  msg="$1"
  echo -ne "${YELLOW}${msg} ["
  for i in {1..20}; do
    echo -ne "#"
    sleep 0.05
  done
  echo -e "]${NC}"
}

# ========== Countdown ==========
countdown() {
  echo -e "\n${RED}Commencing Black Hat Simulation in:${NC}"
  for i in {5..1}; do
    echo -ne "${RED}${i}...${NC} "
    sleep 1
  done
  echo -e "\n"
}

# ========== Section Display ==========
section() {
  echo -e "\n${GREEN}[+ ${1} +]${NC}\n"
  sleep 1
}

# ========== Start Scene ==========
clear
typewriter "Booting into Cyber Scanners Black Hat Hacker Training OS..." 0.04
loading_bar "Injecting Root Access"
loading_bar "Spoofing MAC Address"
loading_bar "Loading Terminal Modules"
countdown

# ───────────────────────────────────────────────
# 🧠 OPERATING SYSTEM BASICS
section "Operating Systems (OS) Knowledge"
typewriter "✔ Understanding OS is critical. Linux is your playground." 0.04
typewriter "✔ File systems, users, permissions, and processes = power." 0.04
typewriter "Example: chmod +x exploit.sh ➜ gives execute permission" 0.04

# ───────────────────────────────────────────────
# 🎭 SOCIAL ENGINEERING
section "Social Engineering Basics"
typewriter "✔ Hack the human, not the machine." 0.04
typewriter "✔ Phishing, fake login pages, info gathering via trust." 0.04
typewriter "Example: Creating a fake login page using SEToolkit" 0.04

# ───────────────────────────────────────────────
# 💻 PROGRAMMING FOR HACKERS
section "Programming Knowledge (Python, Bash, C)"
typewriter "✔ Bash ➜ Automate tools/scripts" 0.03
typewriter "✔ Python ➜ Build payloads, scanners, bots" 0.03
typewriter "✔ C ➜ Create custom exploits, low-level access" 0.03
typewriter "Example: python3 reverse_shell.py" 0.03

# ───────────────────────────────────────────────
# ⚔️ TOOLS TRAINING
section "Essential Hacking Tools"

typewriter "[nmap] ➜ Network scanning" 0.03
typewriter "nmap -sV 192.168.1.1" 0.03
sleep 0.5

typewriter "[hydra] ➜ Brute-force login" 0.03
typewriter "hydra -l admin -P rockyou.txt ssh://target" 0.03
sleep 0.5

typewriter "[sqlmap] ➜ SQL injection scanner" 0.03
typewriter "sqlmap -u http://site.com/index.php?id=1 --dump" 0.03
sleep 0.5

typewriter "[john] ➜ Password cracker" 0.03
typewriter "john hash.txt --wordlist=rockyou.txt" 0.03
sleep 0.5

typewriter "[msfconsole] ➜ Exploits framework" 0.03
typewriter "use exploit/windows/smb/ms17_010_eternalblue" 0.03
sleep 1

# ───────────────────────────────────────────────
# 🔥 Simulated Command Execution
section "Terminal Simulation"
fake_cmds=("nmap -A 10.0.0.5"
           "hydra -l root -P rockyou.txt ssh://10.0.0.5"
           "zip2john secrets.zip > hash.txt"
           "john hash.txt --wordlist=rockyou.txt"
           "sqlmap -u http://victim.com/page.php?id=5 --dump")

for cmd in "${fake_cmds[@]}"; do
  typewriter "$ $cmd" 0.06
  sleep 0.4
done

# ───────────────────────────────────────────────
# 🎬 Final Ending Scene
clear
echo -e "${RED}"
echo " ██████╗██╗   ██╗██████╗ ███████╗██████╗ "                           
echo "██╔════╝╚██╗ ██╔╝██╔══██╗██╔════╝██╔══██╗"                          
echo "██║      ╚████╔╝ ██████╔╝█████╗  ██████╔╝"                          
echo "██║       ╚██╔╝  ██╔══██╗██╔══╝  ██╔══██╗"                          
echo "╚██████╗   ██║   ██████╔╝███████╗██║  ██║"                          
echo " ╚═════╝   ╚═╝   ╚═════╝ ╚══════╝╚═╝  ╚═╝"                          
                                                                    
echo "███████╗ ██████╗ █████╗ ███╗   ██╗███╗   ██╗███████╗██████╗ ███████╗"
echo "██╔════╝██╔════╝██╔══██╗████╗  ██║████╗  ██║██╔════╝██╔══██╗██╔════╝"
echo "███████╗██║     ███████║██╔██╗ ██║██╔██╗ ██║█████╗  ██████╔╝███████╗"
echo "╚════██║██║     ██╔══██║██║╚██╗██║██║╚██╗██║██╔══╝  ██╔══██╗╚════██║"
echo "███████║╚██████╗██║  ██║██║ ╚████║██║ ╚████║███████╗██║  ██║███████║"
echo "╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝╚══════╝"
echo -e "${NC}"
sleep 2

typewriter "✔ Training Complete." 0.06
typewriter "YOU ARE NOW A BLACK HAT HACKING IN THE SYSTEM..." 0.07
typewriter "CYBER BLACK LION" 0.08
echo ""
