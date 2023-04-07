#Racine carrée d’un nombre

#Créez un programme qui affiche la racine carrée d’un entier positif.
#Exemples d’utilisation :
#$> node exo.js 9
#3
#Attention : je compte sur vous pour gérer les potentielles erreurs d’arguments

c = ARGV[0].to_i #entier
resultat = 0

if ARGV.empty?
    puts " *** Vous n'avez pas saisi d'arguments *** "
elsif ARGV[0].match(/[a-zA-Z]/)
     puts " *** Vous devez saisir un chiffre en d'arguments *** "
 elsif c < 2
    puts " *** Attention, l'argument doit etre positif et supperieur à 1 *** "
else
    resultat = c**(1.0/2)
end
puts resultat
