#!/bin/bash
# procédure4.sh
# Cette procédure purifie les fichiers temporaires.

echo "Exécution de la procédure 4 : Suppression des fichiers temporaires."
# Commande pour supprimer les fichiers temporaires
find /var/www/mediawiki/temp -type f -delete
echo "Suppression des fichiers temporaires terminée."
