#!/usr/bin/env ruby
#Taille d’une chaîne

#Créez un programme qui affiche le nombre de caractères d’une chaîne de caractères passée en argument.
#Exemples d’utilisation :
#$> python exo.py “Hello world!”
#12
#$> python exo.py
#erreur.
#$> python exo.py “Bonjour” “Aurevoir”
#erreur.
#$> python exo.py 10
#erreur.


chaine = ARGV[0]
e = "erreur."

if chaine == nil
  puts e
elsif ARGV.size >= 2
    puts e
elsif ARGV[0].match(/\d/)
    puts e
else
sous_chaine = chaine.split("")
puts sous_chaine.size
end


