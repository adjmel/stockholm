DIRECTORY = infection

FILES = $(DIRECTORY)/audio.mp3 $(DIRECTORY)/gif.gif $(DIRECTORY)/texte.txt \
        $(DIRECTORY)/image.jpg $(DIRECTORY)/document.doc \
        $(DIRECTORY)/video.mp4 $(DIRECTORY)/error.mp6 $(DIRECTORY)/ft_file.ft \
		$(DIRECTORY)/svg.svg

all: setup

setup:
	@echo "Creating the folder $(DIRECTORY)..."
	@mkdir -p $(DIRECTORY)  # Crée le dossier s'il n'existe pas
	@echo "Creating the necessary files in $(DIRECTORY)..."
	@for file in $(FILES); do \
		echo "Content of $$file" > $$file; \
	done
	@echo "Files created : $(FILES)"

help:
	@echo "make setup : Create the files needed for encryption"
	@echo "make clean : Delete encrypted files and original files"

clean:
	rm -f infection/*.ft $(FILES)
	rm -f encryption_key.txt
	rm -f metadata.json
	rm -rf infection
