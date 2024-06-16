#!/bin/bash

# Vérifiez si un message de commit est passé en argument
if [ -z "$1" ]; then
  echo "Veuillez fournir un message de commit."
  exit 1
fi

# Ajouter tous les changements
git add .

# Faire un commit avec le message fourni
git commit -m "$1"

# Pousser les changements sur la branche courante
git push origin $(git rev-parse --abbrev-ref HEAD)

# Afficher un message de confirmation
echo "Les changements ont été ajoutés, commités et poussés. Créez maintenant une pull request via l'interface de GitHub."
