#!/data/data/com.termux/files/usr/bin/bash

# === Colors ===
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
NC='\033[0m'

# === Typewriter Effect ===
tw() {
  text="$1"
  delay="${2:-0.03}"
  for (( i=0; i<${#text}; i++ )); do
    printf "${CYAN}${text:$i:1}${NC}"
    sleep "$delay"
  done
  echo ""
}

# === Section Display ===
section() {
  echo -e "\n${YELLOW}===[ $1 ]===${NC}"
  sleep 1
  for line in "${@:2}"; do
    tw "$line"
    sleep 0.5
  done
  sleep 1
}

# === Password Gate ===
password_gate() {
  echo -n -e "${GREEN}$1 ${NC}"
  read -s input_pass
  echo ""
  if [[ "$input_pass" != "blackhat" ]]; then
    echo -e "${RED}$2${NC}"
    exit 1
  fi
}

# === English Version ===
run_english_mode() {
  clear
  password_gate "Enter access password to load training:" "Access Denied. Wrong Password!"

  clear
  tw "Booting into Cyber Scanner Black Hat Hacker Training OS..." 0.03
  sleep 1

  section "OS & System" \
    "✔ Master Linux CLI – your hacking playground" \
    "✔ Understand root access, file systems, processes" \
    "✔ Know 'chmod', 'ps', 'top', 'nano', 'kill'"

  section "Attack Types" \
    "✔ Passive (sniffing), Active (exploitation)" \
    "✔ Zero-day, MITM, privilege escalation"

  section "Carding" \
    "✔ What is BIN? CVV? Dumps?" \
    "✔ Understand card data structure" \
    "✔ Dark web shops, checkers, and risks"

  section "Tools" \
    "✔ Nmap – scan targets" \
    "✔ Hydra – brute force passwords" \
    "✔ SQLMap – database exploit" \
    "✔ Metasploit – automated exploitation"

  section "Password Cracking" \
    "✔ Use rockyou.txt or custom wordlists" \
    "✔ Tools: JohnTheRipper, Hashcat, Hydra" \
    "✔ Crack hashes: MD5, SHA1, bcrypt with GPU or CPU" \
    "✔ Use hash-identifier to find type" \
    "✔ Create rainbow tables for speed"

  section "Programming" \
    "✔ Python – payloads, bots, tools" \
    "✔ Bash – script automation" \
    "✔ C – low-level exploits"

  section "Cyber Security" \
    "✔ Learn both attack and defense" \
    "✔ Firewalls, patching, secure configs" \
    "✔ Ethical hacking vs illegal usage"

  section "Networking" \
    "✔ Understand IP, MAC, Subnets, Ports" \
    "✔ Use Wireshark / tcpdump" \
    "✔ OSI Model: focus on L2-L4"

  section "Social Engineering" \
    "✔ Human weaknesses: trust, urgency, fear" \
    "✔ Phishing, impersonation, USB drops"

  section "Reverse Engineering" \
    "✔ Decompile apps, analyze malware" \
    "✔ Tools: Ghidra, IDA, objdump"

  section "Exploits" \
    "✔ Buffer Overflow, Format String bugs" \
    "✔ Use CVEs + custom payloads"

  section "Injection" \
    "✔ SQL, Command, LDAP, XSS" \
    "✔ Defense: validate & sanitize input"

  section "DDoS / DoS" \
    "✔ Crash servers with traffic floods" \
    "✔ Tools: LOIC, HOIC, Slowloris"

  section "Firewall Bypass" \
    "✔ Use proxychains, DNS tunneling" \
    "✔ Spoof ports, IP, and headers"

  section "OTP Bypass" \
    "✔ Exploit 2FA via phishing or SIM swap" \
    "✔ Intercept OTPs with social tricks"

  section "Dark Web" \
    "✔ Access via Tor / I2P" \
    "✔ Marketplaces, forums, illegal services" \
    "✔ OpSec is critical, or you'll get traced"

  section "Bitcoin & Crypto" \
    "✔ Used for anonymous payments" \
    "✔ Understand wallets, tumblers, mixers" \
    "✔ Blockchain is public – traceable without privacy tools"

  section "Anonymity & OPSEC" \
    "✔ Use Tails OS, VPN + Tor, burner devices" \
    "✔ Avoid leaks: MAC spoofing, no logins" \
    "✔ Never mix real identity with hacker identity"

  section "Becoming a True Black Hat" \
    "✔ Think like an attacker: creative, curious, adaptive" \
    "✔ Build skills quietly. Never brag." \
    "✔ Stay anonymous: ghost online and offline" \
    "✔ Master tools, code, people, systems" \
    "✔ Train in labs, not on live targets" \
    "✔ Break, learn, build, repeat"

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
  tw "✔ You have completed Cyber Scanners Black Hat Hacker Training (Advanced)." 0.06
  tw "✔ All core areas covered: OSINT, Dark Web, Exploits, Crypto, Tools..." 0.05
  tw "⚠ Use knowledge wisely or face the consequences. mode: ON 🕶️" 0.06
  echo ""
}

# === Sinhala Version ===
run_sinhala_mode() {
  clear
  password_gate "පුහුණු වැඩසටහනට පිවිසීමට මුරපදය ඇතුළත් කරන්න:" "වැරදි මුරපදයකි! පිවිසීම අවහිරයි!"

  clear
  tw "cyber scanners Black Hat Hacker පුහුණු පද්ධතිය ආරම්භ වෙමින්..." 0.03
  sleep 1

  section "OS සහ පද්ධති" \
    "✔ Linux CLI හොඳින් අඳින්න" \
    "✔ root access, file systems, processes තේරුම් ගන්න" \
    "✔ chmod, ps, top, nano, kill වැනි විධාන"

  section "ප්‍රහාර වර්ග" \
    "✔ Passive (sniffing), Active (exploitation)" \
    "✔ Zero-day, MITM, privilege escalation"

  section "කාඩ් පත මගඩිය" \
    "✔ BIN, CVV, Dumps කියන්නේ මොකද්ද?" \
    "✔ කාඩ්පත් දත්ත ව්‍යුහය තේරුම් ගන්න" \
    "✔ Dark web ගබඩා, checkers, අවදානම්"

  section "මෙවලම්" \
    "✔ Nmap – අරමුණු scan කරන්න" \
    "✔ Hydra – මුරපද brute-force" \
    "✔ SQLMap – දත්ත සමුදා exploit කරන්න" \
    "✔ Metasploit – automated exploitation"

  section "මුරපද කැඩීම" \
    "✔ rockyou.txt හෝ custom wordlists භාවිත කරන්න" \
    "✔ JohnTheRipper, Hashcat, Hydra" \
    "✔ Hashes කැඩීම: MD5, SHA1, bcrypt" \
    "✔ hash-identifier භාවිතයෙන් hash වර්ගය සොයන්න" \
    "✔ rainbow tables නිර්මාණය කරන්න"

  section "පරිගණක භාෂා" \
    "✔ Python – payloads, bots, tools" \
    "✔ Bash – automation scripts" \
    "✔ C – low-level exploits"

  section "සයිබර් ආරක්ෂාව" \
    "✔ ආරක්ෂණය සහ ප්‍රහාරය දෙකම ඉගෙන ගන්න" \
    "✔ Firewalls, patching, secure configs" \
    "✔ නීතිමය ethical hacking සහ නීති විරෝධී hacking"

  section "ජාලකය" \
    "✔ IP, MAC, Subnet, Ports තේරුම් ගන්න" \
    "✔ Wireshark / tcpdump භාවිත කරන්න" \
    "✔ OSI Model: L2-L4 ප්‍රමුඛ"

  section "සමාජ ඉංජිනේරුකරණය" \
    "✔ විශ්වාසය, බිය, අවශ්‍යතාව – මිනිසුන්ගේ දුර්වලතා" \
    "✔ Phishing, impersonation, USB drops"

  section "Reverse Engineering" \
    "✔ Apps decompile කර බලන්න" \
    "✔ Ghidra, IDA, objdump වැනි මෙවලම්"

  section "Exploit" \
    "✔ Buffer Overflow, Format String Bugs" \
    "✔ CVEs හා custom payloads"

  section "Injection" \
    "✔ SQL, Command, LDAP, XSS" \
    "✔ වළක්වන්න: input validate & sanitize කරන්න"

  section "DDoS / DoS" \
    "✔ සේවාදායකයන් down කිරීම" \
    "✔ LOIC, HOIC, Slowloris මෙවලම්"

  section "Firewall Bypass" \
    "✔ proxychains, DNS tunneling" \
    "✔ IP spoof, header spoof"

  section "OTP Bypass" \
    "✔ 2FA hack කිරීම phishing හෝ SIM swap" \
    "✔ OTP intercept කිරීම social tricks මඟින්"

  section "Dark Web" \
    "✔ Tor / I2P භාවිතයෙන් පිවිසෙන්න" \
    "✔ අලෙවිකඩ, forums, අනවසර සේවා" \
    "✔ OpSec අනිවාර්යයි!"

  section "Bitcoin & Cryptocurrency" \
    "✔ ගෝපන ගෙවීම් සඳහා භාවිත වේ" \
    "✔ Wallets, tumblers, mixers" \
    "✔ Blockchain trace විය හැක – privacy tools අවශ්‍යයි"

  section "ගෝපනත්වය & OPSEC" \
    "✔ Tails OS, VPN + Tor, burner devices" \
    "✔ MAC spoofing, logins වලින් වළකින්න" \
    "✔ සත්‍ය හැඳුනුම්පතෙන් hacker හැඳුනුම්පත වෙනස් තබන්න"

  section "සැබෑ Black Hat Hacker වීම" \
    "✔ ප්‍රහාරකයෙකු වගේ සිතා බලන්න" \
    "✔ නිහතමානීව හැසිරෙන්න" \
    "✔ online / offline ghost වීම" \
    "✔ tools, code, people, systems master කරන්න" \
    "✔ live targets නොව, labs තුළ පුරුදු වන්න" \
    "✔ Break, Learn, Build, Repeat"
 
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
  tw "✔ ඔබ Cyber Scanners Black Hat Hacker පුහුණු වැඩසටහන සම්පුර්ණ කර ඇත." 0.06
  tw "✔ සියලුම ප්‍රධාන කොටස් ආවරණය වුණා: OSINT, Dark Web, Exploits, Crypto, Tools..." 0.05
  tw "⚠ දැනුම බුද්ධියෙන් භාවිත කරන්න.mode: ON 🕶️" 0.06
  echo ""
}

# === Language Selection ===
echo -e "${GREEN}Select Language / භාෂාව තෝරන්න:${NC}"
echo "  1. English"
echo "  2. සිංහල"
read -p "> " lang

if [[ "$lang" == "1" ]]; then
  run_english_mode
elif [[ "$lang" == "2" ]]; then
  run_sinhala_mode
else
  echo -e "${RED}Invalid selection. Defaulting to English.${NC}"
  run_english_mode
fi
