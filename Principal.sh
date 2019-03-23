#!/bin/bash
#datas e calendarios

cat menuPrincipal.txt

read op

case $op in

0)	exit;;
1)	cat menuRegisto.txt
	
	read op1
	case $op1 in 
	
	0) ./principal.sh;;
	1) ./regUni.sh;;
	2) ./regProf.sh;;
	3) ./regAluno.sh;;
	4) ./regDisciplina.sh;;
	
	esac;;
	
2)	cat menuAlterar.txt;;
3)	cat menuEstatisticas.txt;;
4)	cat menuGestaoFicheiros.txt;;
*) 	echo "Escolher uma opção válida"

esac