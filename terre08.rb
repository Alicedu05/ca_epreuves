#Créez un programme qui affiche le résultat d’une puissance.
#L’exposant ne pourra pas être négatif.
#Exemples d’utilisation :
#$> node exo.js 2 3
#8
#Attention : je compte sur vous pour gérer les potentielles erreurs d’arguments.

c = ARGV[0].to_i #chiffre
e = ARGV[1].to_i #exposant
resultat = 1

if ARGV.empty?
    puts " *** Vous n'avez pas saisi d'arguments *** "
elsif ARGV[0].match(/[a-zA-Z]/) && ARGV[1].match(/[a-zA-Z]/) #[ARGV[0], ARGV[1]].grep(/[a-zA-Z]/).size == 2
     puts " *** Vous devez saisir des chiffres en d'arguments *** "
 elsif e <= 0
    puts " *** Attention, l'exposant doit etre positif et superieur à 0 *** "
else
    for cpt in 1..e
    resultat *= c
    end
    puts resultat
end