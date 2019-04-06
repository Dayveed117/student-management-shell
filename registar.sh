#!/bin/bash

case $1 in 

0) ./principal.sh;;

1) 	ficheiroIn="universidades.txt"
	echo "Registo de universidades, pressionar ENTER para começar:"
	read -s useless

		echo "Introduza o nome da Universidade: "
        read nomeUniversidade

        echo "$nomeUniversidade" >> $ficheiroIn
		echo "Registo feito com sucesso, pressionar ENTER para voltar ao menu principal"
		read -s useless
		
		./principal.sh;;
		
2) 	ficheiroIn="professores.txt"
	echo "Registo de professores, pressionar ENTER para começar:"
	read -s useless

		echo "Introduza o número do professor: "
        read numProf
		echo "Introduza o nome do professor: "
        read nomeProf

        echo "$numProf:$nomeProf" >> $ficheiroIn
		echo "Registo feito com sucesso, pressionar ENTER para voltar ao menu principal"
		read -s useless
		
		./principal.sh;;
		
3) 	ficheiroIn="alunos.txt"
	echo "Registo de Aluno, pressionar ENTER para começar:"
	read -s useless

		echo "Introduza o número do aluno: "
        read nrAluno
		
		#if grep "^nraluno:" alunos.txt;	then
		#	echo "Numero já existe!"
		#	sleep 0.5
		#	./registar.sh 3
		#fi
		
		echo "Introduza o nome do aluno: "
        read nomeAluno
        echo "Introduza a universidade de onde vem: "
        read universidadeAluno
        echo "Introduza o professor responsável: "
        read responsavelAluno
        echo "Introduza o semestre que o aluno vem: "
        read semestre
        echo "Introduza o ano que o aluno vem: "		
		read ano

        echo "$nrAluno:$nomeAluno:$universidadeAluno:$responsavel:$semestre:$ano" >> $ficheiroIn
		echo "Registo feito com sucesso, pressionar ENTER para voltar ao menu principal"
		read -s useless
		
		./principal.sh;;
		
4) 	ficheiroIn="disciplinas.txt"
	echo "Registo de Disciplinas, pressionar ENTER (por favor)"
	read -s useless

		echo "Introduza o nome da disciplina: "
        read nomeDisciplina
        echo "Introduza o código da disciplina: "
        read codigoDisciplina
        echo "Introduza o ano: "
        read ano
		echo "Introduza o semestre: "
        read sem

        echo "$nomeDisciplina:$codigoDisciplina:$ano:$semestre" >> $ficheiroIn
		echo "Registo feito com sucesso, pressionar ENTER para voltar ao menu principal."
		read -s useless
		
		./principal.sh;;

*) 		echo "Escolher uma opção válida"
		sleep 0.5
		clear
		cat menuRegisto.txt
		read op1
		./registar.sh $op1;;
	
esac