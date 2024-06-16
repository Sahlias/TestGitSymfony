#!/bin/bash

# Vérifier que le nom de la branche a été fourni
if [ -z "$1" ]; then
  echo "Usage: $0 <feature-name>"
  exit 1
fi

# Nom de la nouvelle branche
branch_name="feature/$1"

# Pull les dernières modifications de la branche principale
git checkout main
git pull origin main

# Créer et basculer vers la nouvelle branche
git checkout -b $branch_name

# Pousser la nouvelle branche vers le dépôt distant et configurer le suivi
git push -u origin $branch_name

echo "La branche '$branch_name' a été créée et poussée sur le dépôt distant."
