
script_file = guessinggame.sh
readme_file = README.md

all: $(readme_file)

$(readme_file): $(script_file)
	echo "# Guessing Game Project" > $(readme_file)
	echo "" >> $(readme_file)
	echo "## Date et heure d'exécution" >> $(readme_file)
	echo "$$(date)" >> $(readme_file)
	echo "" >> $(readme_file)
	echo "## Nombre de lignes de code" >> $(readme_file)
	echo "$$(wc -l < $(script_file))" >> $(readme_file)




