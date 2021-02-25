#! /bin/bash
echo "The process might take a while"
echo "Do you want to start (yes/no)"
read x
if ((x == "yes"))
then
	sudo apt install wireshark && sudo apt install tshark && sudo apt install nmap 
fi
