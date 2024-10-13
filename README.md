### Exemple de Procédure : Sauvegarde des Données via Jenkins

#### **Titre de la Page MediaWiki** : `Procédure : Sauvegarde des Données vers NAS`

### **Introduction**

Cette procédure explique comment automatiser la sauvegarde des données vers le NAS de l'entreprise en utilisant Jenkins. Ce processus garantit que les données critiques sont régulièrement sauvegardées et stockées en toute sécurité.
# SAUVEGARDE_VERS_NAS
### Exemple de Procédure : Sauvegarde des Données via Jenkins vers NAS

#### **Titre de la Page MediaWiki** : `Procédure : Sauvegarde des Données vers NAS`

### **Introduction**

Cette procédure explique comment automatiser la sauvegarde des données vers le NAS de l'entreprise en utilisant Jenkins. Ce processus garantit que les données critiques sont régulièrement sauvegardées et stockées en toute sécurité.

### 1. **Objectif**

Cette procédure décrit le processus d'automatisation de la sauvegarde des données à l'aide de Jenkins vers un NAS (Network Attached Storage). L'objectif est de garantir que les données critiques sont sauvegardées régulièrement et en toute sécurité.

### 2. **Prérequis**

Avant de commencer, assurez-vous d'avoir :

- Un serveur Jenkins installé et configuré.
- Accès SSH à votre NAS.
- L'installation des plugins nécessaires sur Jenkins (par exemple, le plugin SSH, le plugin Git).
- Des droits suffisants pour écrire sur le NAS.

### 3. **Étapes de Configuration**

#### 3.1. **Configurer Jenkins**

1. **Accéder à Jenkins** :
   - Ouvrez votre navigateur et accédez à l'interface de Jenkins.
   - Connectez-vous avec vos identifiants administratifs.

2. **Installer les plugins nécessaires** :
   - Allez dans **Gérer Jenkins** > **Gérer les plugins**.
   - Installez les plugins requis, tels que :
     - **SSH plugin** : Pour exécuter des commandes sur le NAS.
     - **Git plugin** : Si vous devez récupérer des fichiers depuis un dépôt Git.

#### 3.2. **Créer un Nouveau Job Jenkins**

1. **Créer un nouveau job** :
   - Cliquez sur **Nouveau Job** sur la page d'accueil de Jenkins.
   - Donnez un nom au job (par exemple, "Sauvegarde vers NAS") et choisissez **Pipeline** ou **Freestyle project** selon vos besoins.

2. **Configurer le Job** :
   - Dans la section de configuration du job :
     - Définissez les **triggers** (déclencheurs) pour exécuter la tâche de sauvegarde (par exemple, toutes les nuits).
     - Ajoutez un **Build Step** pour exécuter un script shell ou une commande SSH pour sauvegarder les données.

#### 3.3. **Script de Sauvegarde**

1. **Exemple de script shell** :
   - Vous pouvez utiliser un script similaire pour effectuer la sauvegarde. Remplacez les chemins par ceux qui conviennent à votre configuration :
   ```bash
   #!/bin/bash
   # Variables
   SOURCE_DIR="/chemin/vers/les/données"
   NAS_USER="nom_utilisateur"
   NAS_IP="adresse_ip_du_nas"
   NAS_DIR="/chemin/vers/le/dossier_de_sauvegarde"

   # Exécution de la sauvegarde
   rsync -avz $SOURCE_DIR $NAS_USER@$NAS_IP:$NAS_DIR
