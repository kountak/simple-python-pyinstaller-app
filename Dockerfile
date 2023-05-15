FROM python:3.9-alpine

# Créer le répertoire de travail
WORKDIR /calculator

# Ajouter le script python
ADD calculator.py/ .

# Installer les packages requis
# COPY requirements.txt requirements.txt
# RUN pip install -r requirements.txt
RUN pip install Flask

# Expose le port sur lequel l'application va écouter (par défaut : 5000)
EXPOSE 5000

# Démarre le serveur Flask lorsque le conteneur est lancé
CMD [ "python", "./calculator.py" ]
