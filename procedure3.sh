#!/bin/bash
# procédure3.sh
# Cette procédure gère la sauvegarde des fichiers MediaWiki.

echo "Exécution de la procédure 3 : Sauvegarde des fichiers MediaWiki."
# Commande pour sauvegarder les fichiers de MediaWiki
tar -czf mediawiki_files_backup.tar.gz /var/www/mediawiki
echo "Sauvegarde des fichiers MediaWiki terminée."
