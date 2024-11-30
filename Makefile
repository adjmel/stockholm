# Makefile pour configurer les fichiers à chiffrer

# Définir les fichiers à chiffrer
DIRECTORY = infection

# Définir les fichiers à chiffrer
FILES = $(DIRECTORY)/audio.mp3 $(DIRECTORY)/gif.gif $(DIRECTORY)/texte.txt \
        $(DIRECTORY)/image.jpg $(DIRECTORY)/document.doc \
        $(DIRECTORY)/video.mp4 $(DIRECTORY)/error.mp6 $(DIRECTORY)/ft_file.ft \
		$(DIRECTORY)/svg.svg

# Cible par défaut
all: setup

# Cible pour configurer les fichiers

setup:
	@echo "Creating the folder $(DIRECTORY)..."
	@mkdir -p $(DIRECTORY)  # Crée le dossier s'il n'existe pas
	@echo "Creating the necessary files in $(DIRECTORY)..."
	@for file in $(FILES); do \
		echo "Content of $$file" > $$file; \
	done
	@echo "Files created : $(FILES)"

# Cible d'aide pour afficher les commandes disponibles
help:
	@echo "make setup : Create the files needed for encryption"
	@echo "make clean : Delete encrypted files and original files"


# Cible pour nettoyer (optionnelle)
clean:
	rm -f infection/*.ft $(FILES)  # Supprime les fichiers chiffrés et les fichiers originaux
	rm -f encryption_key.txt #f pour ne pas print l'erreur si le fichier n'existe pas
	rm -f metadata.json
	rm -rf infection