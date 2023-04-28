#Nombre premier

#Créez un programme qui affiche si un nombre est premier ou pas.
#Exemples d’utilisation :
#$> node exo.js 5
#Oui, 5 est un nombre premier.
#$> node exo.js 6
#Non, 6 n’est pas un nombre premier.
#Attention : 0 et 1 ne sont pas des nombres premiers. Gérez les erreurs d’arguments.

chiffre_argument = ARGV[0].to_f
racine_chiffre = chiffre_argument**(1.0/2)

if ARGV.empty?
        puts " *** Vous n'avez pas saisi d'arguments *** "
elsif ARGV.size > 1
        puts " *** Vous n'avez trop d'arguments *** "
elsif ARGV[0].match(/[a-zA-Z]/)
        puts " *** Vous devez saisir un chiffre en d'arguments non une lettre *** "
elsif chiffre_argument <= 0
        puts "Non, #{chiffre_argument.to_i} n’est pas un nombre premier."
elsif chiffre_argument <= 1
        puts  "Non, #{chiffre_argument.to_i} n’est pas un nombre premier."
elsif racine_chiffre > 1 && racine_chiffre < 2
        puts "Oui, #{chiffre_argument.to_i} est un nombre premier."
else
   est_premier = true
    (2..racine_chiffre).each do |i|
        if chiffre_argument % i == 0
            est_premier = false
            break
        end
    end

    if est_premier == true
        puts "Oui, #{chiffre_argument.to_i} est un nombre premier."
    else
        puts "Non, #{chiffre_argument.to_i} n’est pas un nombre premier."
    end
end

