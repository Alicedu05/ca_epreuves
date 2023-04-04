#Inverser une chaîne

#Créez un programme qui affiche l’inverse de la chaîne de caractères donnée en argument.
#Exemples d’utilisation :
#$> node exo.js “Hello world!”
#!dlrow olleH
#$> node exo.js “lehciM”
#Michel
#Attention : je compte sur vous pour gérer les potentielles erreurs d’arguments.

string = ARGV[0]

if ARGV.empty?
    print "*** Merci de saisir un argument *** "
elsif ARGV[1]
    print " *** Vous tentez de passer plusieurs arguments, merci de n'en saisir qu'un seule! *** "
elsif string =~ /^(\s)*$/ #expression reguliere pour exclure les espace seul
    print " *** Vous avez saisi seulement des espaces, merci de saisir des caractères *** "
else
    (string.size - 1).downto(0) do |i|
    print string[i]  #tableau inversé
    end
end
print "\n"