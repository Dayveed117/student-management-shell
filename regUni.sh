#!/bin/bash

ficheiroIn="universidade.txt"
echo "Registo de universidades, pressionar ENTER para começar:"
read useless

		echo "Introduza o nome da Universidade: "
        read nomeUniversidade

        echo "$nomeUniversidade" >> $ficheiroIn
		echo "Registo feito com sucesso, pressionar ENTER para voltar ao menu principal"
		read useless
		
		./principal.sh
