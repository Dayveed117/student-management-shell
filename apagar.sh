#!/bin/bash

f1="universidades.txt"
f2="alunos.txt"
f3="professores.txt"
f4="disciplinas.txt"

case $1 in 

0) ./principal.sh;;

1) 	echo -e "\nLista de Universidades:"
	
	cat -n $f1 
	
	echo -e "\nQue universidade eliminar?"
	read univ
	if grep -qw "$univ" $f1;	then
		grep -v "$univ" $f1 > tmp.txt
		mv tmp.txt $f1
		echo "Universidade apagada."
	else
		echo "Universidade não encontrada."
	fi
	
	echo -e "\nPressionar ENTER para avançar"
	read -s useless
	./principal.sh;;
	
	
2) 	echo -e "\nLista de Professores:"
	
	cat -n $f3
	
	echo -e "\nQue Professor eliminar? (inserir numero de 2 digitos)"
	read numprof
	
	if grep -qw "^$numprof" $f3;	then
		grep -v "$numprof" $f3 > tmp.txt
		mv tmp.txt $f3
		echo "Professor apagado."
	else
		echo "Professor não encontrado."
	fi
	
	echo -e "\nPressionar ENTER para avançar"
	read -s useless
	./principal.sh;;
	
	
3) 	echo -e "\nLista de Alunos:"
	
	cat -n $f2 
	
	echo -e "\nQue aluno eliminar? (tem que ser um numero de 2 digitos)"
	read alun
	if grep -qw "^$alun" $f2;	then
		grep -vw "^$alun" $f2 > tmp.txt
		mv tmp.txt $f2
		echo "Aluno apagado."
	else
		echo "Aluno não encontrada."
	fi
	
	echo -e "\nPressionar ENTER para avançar"
	read -s useless
	./principal.sh;;
	
	
4) 	echo -e "\nLista de Disciplinas:"
	
	cat -n $f4 
	
	echo -e "\nQue universidade eliminar?"
	read univ
	if grep -q "$univ" $f1;	then
		grep -v "$univ" $f1 > tmp.txt
		mv tmp.txt $f1
		echo "Universidade apagada."
	else
		echo "Disciplina não encontrada."
	fi
	
	echo -e "\nPressionar ENTER para avançar"
	read -s useless
	./principal.sh;;
	
	
*) 	echo "Escolher uma opção válida"
	sleep 0.5
	clear
	cat menuApagar.txt
	read op1
	./apagar.sh $op1;;
	
esac