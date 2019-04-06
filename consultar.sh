#!/bin/bash

case $1 in 

0) ./principal.sh;;

1) 	echo -e "\nLista de Universidades:"
	cat -n universidades.txt 
	
	echo -e "\nPressionar ENTER para avançar"
	read -s useless
	./principal.sh;;
	
2) 	echo -e "\nLista de Alunos:"
	cat -n alunos.txt
	
	echo -e "\nPressionar ENTER para avançar"
	read -s useless
	./principal.sh;;

3) 	echo -e "\nLista de Disciplinas:"
	cat -n disciplinas.txt
	
	echo -e "\nPressionar ENTER para avançar"
	read -s useless
	./principal.sh;;

4) 	echo -e "\nLista de Professores:"
	cat -n professores.txt
	
	echo -e "\nPressionar ENTER para avançar"
	read -s useless
	./principal.sh;;

*) 	echo "Escolher uma opção válida"
	sleep 0.5
	clear
	cat menuConsultar.txt
	read op1
	./consultar.sh $op1;;
	
esac