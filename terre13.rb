#Trouver la Suisse (lol)

#Créez un programme qui prend en paramètre trois entiers et affiche la valeur du milieu.
#Exemples d’utilisation :
#$> ruby exo.rb 11 40 34
#34
#$> ruby exo.rb 2 1 3
#2if ARGV.empty?
#$> ruby exo.rb 2 2 2
#erreur.

def afficher_erreur_aucun_argument()
  puts " *** Vous n'avez pas saisi d'arguments *** "
end

def afficher_erreur_nombre_arguments()
  puts " *** La quantitée d'arguments saisi n'est pas bonne, il en faut 3. *** "
end

def afficher_erreur_string()
  puts " *** Vous devez saisir des chiffres en d'arguments non une lettre *** "
end

def arguments_identiques()
    puts "erreur."
end

# 2 appel les fonctions de vérification d'arguments
def verifie_arguments()
    if ARGV.empty?
    afficher_erreur_aucun_argument()

    elsif ARGV.size != 3
    afficher_erreur_nombre_arguments()

    elsif ARGV[0].match(/[a-zA-Z]/)
    afficher_erreur_string()

    elsif ARGV.uniq.size != ARGV.size #supprime les doublons et verifi la taille
        arguments_identiques()
    else 
        trouve_la_suisse() # 3 trouve le chiffre du milieu si les arguments sont ok
    end
end

def donne_le_plus_grand()
    les_chiffres = ARGV
    a = les_chiffres[0].to_i
    b = les_chiffres[1].to_i
    c = les_chiffres[2].to_i
    plus_grand = [a, b, c].max
    return plus_grand
end

def donne_le_plus_petit()
    les_chiffres = ARGV
    a = les_chiffres[0].to_i
    b = les_chiffres[1].to_i
    c = les_chiffres[2].to_i
    plus_petit = [a, b, c].min
    return plus_petit
end

def trouve_la_suisse()
    les_chiffres = ARGV
    a = les_chiffres[0].to_i
    b = les_chiffres[1].to_i
    c = les_chiffres[2].to_i
    if  donne_le_plus_petit() < a && a < donne_le_plus_grand()
        puts a
    elsif donne_le_plus_petit() < b && b < donne_le_plus_grand()
        puts b
    else puts c
    end
end

# 1 Appel de la fonction principale
verifie_arguments()
