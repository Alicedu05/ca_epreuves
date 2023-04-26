#!/usr/bin/env ruby
#Nombre premier

#Créez un programme qui affiche si un nombre est premier ou pas.
#Exemples d’utilisation :
#$> node exo.js 5
#Oui, 5 est un nombre premier.
#$> node exo.js 6
#Non, 6 n’est pas un nombre premier.
#Attention : 0 et 1 ne sont pas des nombres premiers. Gérez les erreurs d’arguments.

chiffre_argument = ARGV[0].to_f
racine_chiffre = chiffre_argument**(1.0/2) #racine
#puts r
if ARGV.empty?
        puts " *** Vous n'avez pas saisi d'arguments *** "
elsif ARGV.size > 1
        puts " *** Vous n'avez trop d'arguments *** "
elsif ARGV[0].match(/[a-zA-Z]/)
        puts " *** Vous devez saisir un chiffre en d'arguments non une lettre *** "
elsif chiffre_argument < 2
        puts " *** Attention, l'argument doit etre un chiffre positif et supperieur à 1 *** "
elsif racine_chiffre <= 1.99 #pas foufou
                puts "Oui, #{chiffre_argument.to_i} est un nombre premier."
                exit
else
    (2..racine_chiffre).each do |i|
           if chiffre_argument % i == 0
                puts "Non, #{chiffre_argument.to_i} n’est pas un nombre premier."
                exit
            else
                puts "Oui, #{chiffre_argument.to_i} est un nombre premier."
                exit
            end
    end
end



