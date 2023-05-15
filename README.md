# Projet Tutoré Devops : Déploiement d'une application à travers Jenkins

L'objectif de cet exercice est d'apprendre à déployer une apllication Python à travers la plateforme Jenkins.
L'application choisi est un outil en ligne de commande "add2vals" qui produit l'addition de deux valeurs. Si au moins une des valeurs est une chaine, "add2vals" traite les deux valeurs comme une chaîne et les concatène.

La fonction "add2" de la bibliothèque "calc" est accompagnée d'un ensemble de test unitaires. Ceux-ci sont testés avec pytest pour vérifier que cette fonction fonctionne comme prévu et les résultats sont enregistrés dans un rapport JUnit XML.

La livraison de l'outil "add2vals" via PyInstaller convertit cet outil en un fichier exécutable autonome pour Linux que l'on peut télécharger via Jenkins et exécuter à la ligne de comande sur des machines Linux sans python.(Le fichier exécutable est joint au mail).

## Requirements
Pour ce projet, il est nécessaire d'avoir certaines librairies installées et de configurer les variables d'environnement du PATH de l'ordinateur.
Les librairies à installer sont **pytest** et **pyinstaller**.

## Configuration de Jenkins
Cela a été fait en suivant la documentation officielle. Le processus se décline en plusieurs étapes:
  - La connexion sur la plateforme Jenkins
  - La création du projet : _calculator_
  - La configuration du projet : étape de la définition **Pipeline script from SCM**, de la configuration du pipeline avec le lien du [répertoire github](https://github.com/kountak/simple-python-pyinstaller-app), de la spécification de la branche **master**

## Configuration de docker
Les fichiers de configuration du docker qui sont le **Dockerfile** et le **docker-compose** sont disponibles.