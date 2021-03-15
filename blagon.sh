#! /bin/bash
blue='\033[1;34m'
red='\033[1;31m'
bold='\033[1;37m'
green='\033[1;32m'
NC='\033[0m'
clear
echo -e "${blue} ▄▄▄▄▄▄▄▄▄▄   ▄            ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄        ▄ ${NC}"
echo -e "${blue}▐░░░░░░░░░░▌ ▐░▌          ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░▌      ▐░▌${NC}"
echo -e "${blue}▐░█▀▀▀▀▀▀▀█░▌▐░▌          ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌▐░▌░▌     ▐░▌${NC}"
echo -e "${blue}▐░▌       ▐░▌▐░▌          ▐░▌       ▐░▌▐░▌          ▐░▌       ▐░▌▐░▌▐░▌    ▐░▌${NC}"
echo -e "${blue}▐░█▄▄▄▄▄▄▄█░▌▐░▌          ▐░█▄▄▄▄▄▄▄█░▌▐░▌ ▄▄▄▄▄▄▄▄ ▐░▌       ▐░▌▐░▌ ▐░▌   ▐░▌${NC}"
echo -e "${blue}▐░░░░░░░░░░▌ ▐░▌          ▐░░░░░░░░░░░▌▐░▌▐░░░░░░░░▌▐░▌       ▐░▌▐░▌  ▐░▌  ▐░▌${NC}"
echo -e "${blue}▐░█▀▀▀▀▀▀▀█░▌▐░▌          ▐░█▀▀▀▀▀▀▀█░▌▐░▌ ▀▀▀▀▀▀█░▌▐░▌       ▐░▌▐░▌   ▐░▌ ▐░▌${NC}"
echo -e "${blue}▐░▌       ▐░▌▐░▌          ▐░▌       ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░▌    ▐░▌▐░▌${NC}"
echo -e "${blue}▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░▌       ▐░▌▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌▐░▌     ▐░▐░▌${NC}"
echo -e "${blue}▐░░░░░░░░░░▌ ▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌      ▐░░▌${NC}"
echo -e "${blue} ▀▀▀▀▀▀▀▀▀▀   ▀▀▀▀▀▀▀▀▀▀▀  ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀        ▀▀ ${NC}"


echo -e "${green}attack 1${NC}"
echo -e "${green}recon 2${NC}"
echo "select action :"
read action
if (($action == 1)) 
then
	echo -e "${red}attack${NC} selected"
elif (($action == 2)) 
then
	echo -e "${red}recon${NC} selected"
fi

if (($action == 1))
then
		echo -e "${bold}Attack selected${NC}"
		echo -e "${green}Metasploit 1${NC}"
		echo -e "${green}Hping3 2${NC}"
		echo -e "${green}Aircrack-ng 3${NC}"
		echo -e "${green}Wifite 4${NC}"
		echo -e "${green}Gobuster 5${NC}"
		echo -e "${green}Nikto 6${NC}"
	read type
	if (($type == 1))	
	then
		sudo msfconsole
	fi
	if (($type == 2))
	then
		echo "select option:"
		echo -e "${green}with bites 1${NC}"
		echo -e "${green}without bites 2${NC}"
		read option
		if (($option == 1))
		then
			echo "Enter ip"
			read ip
			echo "Enter port"
			read port
			echo "Enter bites"
			read bites
			sudo hping3 -d "$bites" -p "$port" -S --flood "$ip"
		fi
		if (($option == 2))
		then
			echo "Enter ip"
			read ip
			echo "Enter port"
			read port
			sudo hping3 -p "$port" -S --flood "$ip"
		fi
	fi
	if (($type == 3))
	then
		echo "Enter your own command"
		read command
		sudo "$command"
	fi
	if (($type == 4))
	then
		sudo wifite
	fi
	if (($type == 5))
	then
		echo  "enter ip address"
		read ip
		echo "enter wordlist location + wordlist"
		read wordlist
		sudo gobuster dir -u http://"$ip" -w "$wordlist"
	fi
	if (($type == 6))
	then
		echo "enter ip address"
		read ip
		sudo nikto -host http://"$ip"
	fi
fi




if (($action == 2))
then
	echo -e "${bold}Recon options:${NC}"
	echo -e "${green}Wireshark (1) ${NC}"
        echo -e "${green}Nmap (2) ${NC}"
        echo -e "${green}Netdiscover (3) ${NC}"
        echo -e "${green}Tshark (4) ${NC}"
        echo -e "${green}Recon-ng (5) ${NC}"
	read type
	if (($type == 1))
	then
		sudo wireshark --fullscreen
	fi
	if (($type == 2))
	then
		echo "enter ip:"
		read ip
        	sudo nmap -sS -O "$ip"
	fi
	if (($type == 3))
	then
	         echo "enter ip:"
		 read ip
		 sudo netdiscover -r "$ip"
	fi
	if (($type == 4))
	then
		echo -e "${green}output 1${NC}"
		echo -e "${green}no output 2${NC}"
		read output
		if (($output == 1))
		then
			echo -e "${green}Enter interface:${NC}"
			read interface
			echo -e "${green}Enter file name:${NC}"
			read name
			sudo tshark -i "$interface" -w "$name".pcap
		fi
		if (($output == 2))
		then
			echo -e "${green}Enter interface:${NC}"
			read interface
			sudo tshark -i "$interface"
		fi
	fi
	if (($type == 5))
	then
	    sudo recon-ng
	fi
fi
