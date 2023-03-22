#!/usr/bin/env ruby
#L’alphabet à partir de ...

#Créez un programme qui affiche l’alphabet à partir de la lettre donnée en argument en lettres minuscules suivi d’un retour à la ligne.
#Exemples d’utilisation :
#$> python exo.py n
#nopqrstuvwxyz
#$>
#Attention : votre programme devra utiliser une boucle.

tab = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
lettre = ARGV[0].downcase #transforme mon caractere en minuscule
indexlettre = tab.index(lettre) #trouve l'index du caractère dans mon array

if ARGV.empty?
  puts "Merci de passer une lettre en argument!"
elsif ARGV.size >= 2
  puts "Merci de saisir un seul argument !"
elsif ARGV == nil
  puts "Merci de saisire une lettre"
else
    for l in tab[indexlettre..-1]
    print "#{l}"
    end
  print "\n"
end
