#!/bin/bash
#write a script to sort live domains
echo -e \n"
      ██╗██╗███████╗███████╗    ███████╗██╗   ██╗██████╗ ███████╗███╗   ██╗██╗   ██╗███╗   ███╗███████╗██████╗ 
      ██║██║██╔════╝██╔════╝    ██╔════╝██║   ██║██╔══██╗██╔════╝████╗  ██║██║   ██║████╗ ████║██╔════╝██╔══██╗
      ██║██║███████╗███████╗    ███████╗██║   ██║██████╔╝█████╗  ██╔██╗ ██║██║   ██║██╔████╔██║█████╗  ██████╔╝
 ██   ██║██║╚════██║╚════██║    ╚════██║██║   ██║██╔══██╗██╔══╝  ██║╚██╗██║██║   ██║██║╚██╔╝██║██╔══╝  ██╔══██╗
 ╚█████╔╝██║███████║███████║    ███████║╚██████╔╝██████╔╝███████╗██║ ╚████║╚██████╔╝██║ ╚═╝ ██║███████╗██║  ██║
  ╚═══╝ ╚═╝╚══════╝╚══════╝    ╚══════╝ ╚═════╝ ╚═════╝ ╚══════╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝"
 											echo "Credits:Jiss Jose"


echo -e "The subdomain finder and sorts alive and removes dupes.Run by typing \ngit clone https://github.com/jisjose98/live200* \nsudo bash live200.sh"


#begins

echo "live domain filterer"
echo "Enter domain name"
read dom
echo -e "\n"
subfinder -silent -d $dom -o subs.txt

while read value; do
	alive=$(cat subs.txt | httprobe | tee alive.txt);
done < subs.txt
echo "----------"
subnum=$(cat alive.txt | wc -l)
#sort dupes
echo "Number of sudomains alive is $subnum"
echo "****************sorted**********"

sort alive.txt > sorted.txt
sleep 3
clear
cat sorted.txt
