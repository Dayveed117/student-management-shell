#!/bin/bash
#datas e calendarios
clear
echo "Welcome to UbiStudents, press ENTER"
read -s useless
cat menuPrincipal.txt

read op
case $op in

0)	exit;;

1)	cat menuRegisto.txt
	read op1
	./registar.sh $op1;;
	
2)	cat menuAlterar.txt
	read op1
	./alterar.sh $op1;;
	
3)	cat menuConsultar.txt
	read op1
	./consultar.sh $op1;;
	
4)	cat menuGestaoFicheiros.txt
	read op1
	./gestor.sh $op1;;
	
*) 	echo "Opção inválida"
	sleep 0.5
	./principal.sh;;

esac