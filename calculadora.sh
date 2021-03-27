#!/bin/bash

#colores

G="\e[0;32m\033[1m"
F="\033[0m\e[0m"
R="\e[0;31m\033[1m"
B="\e[0;34m\033[1m"
Y="\e[0;33m\033[1m"
P="\e[0;35m\033[1m"
T="\e[0;36m\033[1m"
GR="\e[0;37m\033[1m"
function reiniciar {
bash calculadora.sh
}

clear
sleep 1
echo -e $P "Elige una opcion

	$T[${F}1$T]$F$Y Suma
	$T[${F}2$T]$F$Y Resta
	$T[${F}3$T]$F$Y Multiplicacion
	$T[${F}4$T]$F$Y Division
	$T[${F}0$T]$F$Y Salir
"
read -p ">>> " opc
case $opc in
	1) clear
	echo -e $G "Escribe un numero"$F
	read suma1
	echo -e $G "Escribe otro numero"$F
	read suma2
result1=$[$suma1+$suma2]
echo -e $T "$suma1 + $suma2 = $result1"
sleep 5
reiniciar
;;

	2) clear
	echo -e $G "escribe un numero"$F
	read resta1
	echo -e $G "escribe otro numero"$F
	read resta2
result2=$[$resta1-$resta2]
echo -e $T "$resta1 - $resta2 = $result2"$F
sleep 5
reiniciar
;;

	3)clear
	echo -e $G"escribe un numero"$F
	read mult1
	echo -e $G"escribe otro numero"$F
	read mult2
result3=$[$mult1*$mult2]
echo -e $G "$mult1 x $mult2 = $result3"
sleep 5
reiniciar
;;
	4)clear
	echo -e $G"escribe un numero"$F
	read div1
	echo -e $G"escribe otro numero"$F
	read div2
result4=$[$div1/$div2]
echo -e $T "$div1 ÷ $div2 = $result4"
sleep 5
reiniciar
;;

	0) exit
esac

