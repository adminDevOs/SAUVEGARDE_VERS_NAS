#!/bin/bash
# procédure1.sh
# Cette procédure réalise une tâche spécifique pour MediaWiki.

echo "Exécution de la procédure 1 : Sauvegarde de la base de données MediaWiki."

# Commande pour sauvegarder la base de données
mysqldump -u wikiuser -pstrongpassword mediawiki > mediawiki_backup.sql

echo "Sauvegarde de la base de données terminée."
