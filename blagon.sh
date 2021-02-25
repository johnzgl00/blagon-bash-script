#! /bin/bash
red='\033[1;31m'
bold='\033[1;37m'
green='\033[1;32m'
NC='\033[0m'
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
	
		echo -e "${green}Metasploit 1${NC}"
		echo -e "${green}Hping3 2${NC}"
		echo -e "${green}Aircrack-ng 3${NC}"
		echo -e "${green}Wifite 4${NC}"
	read type
	if (($type == 1))
	then
		sudo msfconsole
	fi
	if (($type == 2))
	then
		echo "enter ip:"
		read ip
		sudo hping3 -S --flood "$ip"
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
		echo "enter your own command:"
	        read command
		sudo "$command"
	fi
	if (($type == 5))
	then
	        echo "enter your own command:"
		read command
		sudo "$command"
	fi
fi
