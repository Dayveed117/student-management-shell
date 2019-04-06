#!/bin/bash

ficheiroAluno='alunos.txt'
ficheirotmp='tmp.txt'

cat menuModificacoes.txt
echo "Escolha a opção: "
read opcao

while [ $opcao -ne 0 ]
do

	cat menuModificacoes.txt
	echo "Escolha a opção: "
	read opcao

	case $opcao in

	
		0)
			./principal.sh;;
	
		1) 
			clear
			echo "Introduza o número do aluno: "
			read numAluno
			nomeAntigoAluno=$(grep '^'$numAluno':' $ficheiroAluno | cut -d : -f 2)

			echo "Introduza o novo nome que deseja para esse aluno: " 
			read novoNomeAluno 
			sed -i "s/$numAluno:${nomeAntigoAluno}/$numAluno:${novoNomeAluno}/" $ficheiroAluno;;
		
		2)
			clear
			echo "Introduza o número do aluno: "
			read numAluno
			
			nomeAluno=$(grep '^'$numAluno':' $ficheiroAluno | cut -d : -f 2)
			universidadeAntiga=$(grep '^'$numAluno':' $ficheiroAluno | cut -d : -f 3)

			echo "Introduza a nova universidade: "
			read universidadeNova		

			sed -i "s/$numAluno:$nomeAluno:$universidadeAntiga/$numAluno:$nomeAluno:$universidadeNova/" $ficheiroAluno;;
		3)
			clear
			echo "Introduza o número do aluno: "
			read numAluno

			nomeAluno=$(grep '^'$numAluno':' $ficheiroAluno | cut -d : -f 2)
			universidade=$(grep '^'$numAluno':' $ficheiroAluno | cut -d : -f 3)
			antigoResponsavel=$(grep '^'$numAluno':' $ficheiroAluno | cut -d : -f 4)
			echo "Introduza o novo responsável: "
			read novoResponsavel

			sed -i "s/$numAluno:$nomeAluno:$universidade:$antigoResponsavel/$numAluno:$nomeAluno:$universidade:$novoResponsavel/" $ficheiroAluno;;
		
		4)
			clear
			echo "Introduza o número do aluno: "
			read numAluno

			nomeAluno=$(grep '^'$numAluno':' $ficheiroAluno | cut -d : -f 2)
			universidade=$(grep '^'$numAluno':' $ficheiroAluno | cut -d : -f 3)
			responsavel=$(grep '^'$numAluno':' $ficheiroAluno | cut -d : -f 4)
			antigoSemestre=$(grep '^'$numAluno':' $ficheiroAluno | cut -d : -f 5)			

			echo "Introduza o novo semestre: "
			read novoSemestre

			sed -i "s/$numAluno:$nomeAluno:$universidade:$responsavel:$antigoSemestre/$numAluno:$nomeAluno:$universidade:$responsavel:$novoSemestre/" $ficheiroAluno;;

		5)
			clear
			echo "Introduza o número do aluno: "
			read numAluno

			nomeAluno=$(grep '^'$numAluno':' $ficheiroAluno | cut -d : -f 2)
			universidade=$(grep '^'$numAluno':' $ficheiroAluno | cut -d : -f 3)
			responsavel=$(grep '^'$numAluno':' $ficheiroAluno | cut -d : -f 4)
			semestre=$(grep '^'$numAluno':' $ficheiroAluno | cut -d : -f 5)			
			antigoAno=$(grep '^'$numAluno':' $ficheiroAluno | cut -d : -f 6)			
			echo "Introduza o novo ano: "
			read novoAno

			sed -i "s/$numAluno:$nomeAluno:$universidade:$responsavel:$semestre:$antigoAno/$numAluno:$nomeAluno:$universidade:$responsavel:$semestre:$novoAno/" $ficheiroAluno;;
		6)
			echo -e "\nLista de Alunos:"
			
			cat -n $ficheiroAluno 
			
			echo -e "\nQue aluno eliminar? (tem que ser um numero de 2 digitos)"
			read alun
			if grep -qw "^$alun" $ficheiroAluno;	then
				grep -vw "^$alun" $ficheiroAluno > $ficheirotmp
				mv tmp.txt $ficheiroAluno
				echo "Aluno apagado."
			else
				echo "Aluno não encontrada."
			fi;;
		
		*)
			clear
			echo "Inseriu um valor errado."
	esac
done

		
