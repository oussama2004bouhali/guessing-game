#!/bin/bash

# Fonction pour obtenir le nombre de fichiers dans le répertoire actuel
get_file_count() {
    echo $(ls -1 | wc -l)
}

# Nombre correct de fichiers
correct_count=$(get_file_count)

echo "Bienvenue dans le jeu de devinettes !"
echo "Devinez combien de fichiers se trouvent dans le répertoire actuel :"

while true; do
    read -p "Entrez votre réponse : " user_guess

    if [[ $user_guess -eq $correct_count ]]; then
        echo "Félicitations ! Vous avez deviné correctement."
        break
    elif [[ $user_guess -lt $correct_count ]]; then
        echo "Trop bas. Essayez encore."
    else
        echo "Trop haut. Essayez encore."
    fi
done

