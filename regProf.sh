#!/bin/bash

ficheiroIn="professores.txt"
echo "Registo de professores, pressionar ENTER para começar:"
read useless

		echo "Introduza o nome do professor: "
        read nomeProf
		echo "Aluno por que é responsavel: "
		read alunoRes

        echo "$nomeProf:$alunoRes" >> $ficheiroIn
		echo "Registo feito com sucesso, pressionar ENTER para voltar ao menu principal"
		read useless
		
		./principal.sh