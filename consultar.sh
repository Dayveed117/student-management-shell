#!/bin/bash

case $1 in 

0) ./principal.sh;;

1) cat -n universidades.txt
	
	echo -e "\nPressionar ENTER para avançar"
	read -s useless
	./principal.sh;;
	
2) cat -n alunos.txt
	
	echo -e "\nPressionar ENTER para avançar"
	read -s useless
	./principal.sh;;

3) cat -n disciplinas.txt
	
	echo -e "\nPressionar ENTER para avançar"
	read -s useless
	./principal.sh;;

4) cat -n professores.txt
	
	echo -e "\nPressionar ENTER para avançar"
	read -s useless
	./principal.sh;;

*) echo "Escolher uma opção válida"
	cat menuConsultar.txt
	read op1
	./consultar.sh $op1;;
	
esac