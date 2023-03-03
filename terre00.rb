#!/usr/bin/env ruby
#!/usr/bin/env ruby

#Créez un programme qui affiche l’alphabet en lettres minuscules suivi d’un retour à la ligne.
#Exemples d’utilisation :
#$> python exo.py
#abcdefghijklmnopqrstuvwxyz
#$>
#Attention : votre programme devra utiliser une boucle.

tab = ["a", "b", "c", "d", "e", "f","g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

  for c in tab [0..-1]
   print "#{c}"
end
print "\n"

