#!/bin/bash
clear
endereco(){
	read -p "DIGITE O IP: " num
	echo $num | grep -E '^([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\.([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])){3}$' 
	if [ $? == 0 ];then
	clear
	echo "ip valido"
	sleep 2
else
	clear
	echo "ip invalido"
	sleep 2
	endereco
fi

}
endereco
