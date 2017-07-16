#!/bin/bash
#init-project-electron.sh

#First parameter : name of the project

if [ $# -ne 1 ]; then
	echo "Aucun nom de projet"
	exit 1
fi

PROJECT_NAME=$1
echo "Creation du projet : $PROJECT_NAME"

#Création du répertoire
PATH_PROJECT=$HOME/workspace/$PROJECT_NAME

if [ -d $PATH_PROJECT ]; then
	echo "Ce projet existe deja"
	exit 2
fi

mkdir -p $PATH_PROJECT

#Création des fichiers
touch $PATH_PROJECT/package.json
touch $PATH_PROJECT/main.js
touch $PATH_PROJECT/index.html

#Ajout des informations basique dans package.json
PACKAGE=$PATH_PROJECT/package.json
echo "{" >> $PACKAGE
echo "	\"name\"		:\"$PROJECT_NAME\"" >> $PACKAGE
echo "	\"version\"	:\"0.0.1\"" >> $PACKAGE
echo "	\"main\"		:\"main.js\"" >> $PACKAGE
echo "}" >> $PACKAGE

echo "Projet $PROJECT_NAME est cree"