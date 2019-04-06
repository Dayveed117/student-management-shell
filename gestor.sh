#!/bin/bash

case $1 in 

0) ./principal.sh;;

1)	if [ ! -d backups ];
		then
			mkdir backups
	fi
	
	cp alunos.txt ./backups/BKPalunos.txt
	cp universidades.txt ./backups/BKPuniversidades.txt
	cp professores.txt ./backups/BKPprofessores.txt
	cp disciplinas.txt ./backups/BKPdisciplinas.txt
	
	echo "Sucesso ao fazer backup, pressionar ENTER para voltar ao menu principal"
	read -s useless
	./principal.sh;;
	
	
2) 	if [ -d backups ];
		then
			if [ -z "$(ls -A backups)" ];
				then
					echo "Não há backups a restaurar"
				else
					cd backups
					cp BKPalunos.txt ../alunos.txt
					cp BKPuniversidades.txt ../universidades.txt
					cp BKPprofessores.txt ../professores.txt
					cp BKPdisciplinas.txt ../disciplinas.txt
					cd ..
					
					echo "Sucesso ao restaurar backups, pressionar ENTER para voltar ao menu principal"
				fi						
		else
			echo "Não existe pasta backup"
	fi
	
	read -s useless
	./principal.sh;;
	

3) 	if [ -d backups ];
		then
			if [ -z "$(ls -A backups)" ];
				then
					echo "Não existem backups a remover"
				else
					rm backups/*
					echo "Sucesso ao remover backups, pressionar ENTER para voltar ao menu principal"
				fi						
		else
			echo "Não existe pasta backup"
	fi
	
	read -s useless
	./principal.sh;;
	

*) 	echo "Escolher uma opção válida"
	sleep 0.5
	clear
	cat menuGestaoFicheiros.txt
	read op1
	./gestor.sh $op1;;
	
esac