# Nom du fichier : new-feature.ps1

param (
    [string]$featureName
)

if (-not $featureName) {
    Write-Host "Usage: .\new-feature.ps1 <feature-name>"
    exit 1
}

# Nom de la nouvelle branche
$branchName = "feature/$featureName"

# Pull les dernières modifications de la branche principale
git checkout main
git pull origin main

# Créer et basculer vers la nouvelle branche
git checkout -b $branchName

Write-Host "Nouvelle branche '$branchName' créée et prête à l'emploi."
