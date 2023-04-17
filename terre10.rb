#!/usr/bin/env ruby
#Nombre premier

#Créez un programme qui affiche si un nombre est premier ou pas.
#Exemples d’utilisation :
#$> node exo.js 5
#Oui, 5 est un nombre premier.
#$> node exo.js 6
#Non, 6 n’est pas un nombre premier.
#Attention : 0 et 1 ne sont pas des nombres premiers. Gérez les erreurs d’arguments.


c = ARGV[0].to_f
r = c**(1.0/2) #racine

(2..r).each do |i|
   if c % i == 0
        puts "Non, #{c} n’est pas un nombre premier."
        exit
    else
        puts "Oui, #{c} est un nombre premier."
        exit
    end
end




