#!/usr/bin/env ruby

#Créez un programme qui affiche son nom de fichier.
#Exemples d’utilisation :
#$> node exo.js
#exo.js

#$> node crevette.js
#crevette.js

#puts __FILE__
#puts $0
#File.expand_path($0) # donne le chemin depuis le fichier qui execute le script $0

nomfichier = File.split($0)[-1] #decoupe le chemin de $0 en string et recuprer la valeur de l'index de fin
puts nomfichier #affiche le resultat











