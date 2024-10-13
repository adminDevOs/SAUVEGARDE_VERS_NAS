#!/bin/bash
# procédure2.sh
# Cette procédure effectue une autre tâche pour MediaWiki.

echo "Exécution de la procédure 2 : Mise à jour de MediaWiki."
# Commande pour mettre à jour MediaWiki
cd /var/www/mediawiki
git pull origin main
echo "Mise à jour de MediaWiki terminée."
