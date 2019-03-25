#!/bin/bash

ficheiroIn="alunos.txt"
echo "Registo de Aluno, pressionar ENTER para começar:"
read useless

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

        echo "$nomeAluno:$universidadeAluno:$responsavel:$semestre:$ano" >> $ficheiroIn
		echo "Registo feito com sucesso, pressionar ENTER para voltar ao menu principal"
		read useless
		
		./principal.sh
