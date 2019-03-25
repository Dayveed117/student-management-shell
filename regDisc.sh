#!/bin/bash

ficheiroIn="disciplinas.txt"
echo "Registo de Disciplinas, pressionar ENTER (por favor)"
read useless

		echo "Introduza o nome da disciplina: "
        read nomeDisciplina
        echo "Introduza o código da disciplina: "
        read codigoDisciplina
        echo "Introduza o ano e o semestre: "
        read anosemestre

        echo "$nomeDisciplina:$codigoDisciplina:$anosemestre" >> $ficheiroIn
		echo "Registo feito com sucesso, pressionar ENTER para voltar ao menu principal."
		read useless
		
		./principal.sh
