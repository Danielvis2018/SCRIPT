#!/bin/bash
data(){
read -p "DIGITE DATA DE NASCIMENTO: " DATA
echo $DATA | grep -E '^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/(19[0-9]{2}|200[0-9]|201[0-7])$'
if [ $? == 0 ]; then
	clear
	echo "DATA VALIDA"
	sleep 2
else
	echo "DATA INVALIDA"
fi
}
data
