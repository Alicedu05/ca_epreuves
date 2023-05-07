#Trié ou pas

#Créez un programme qui détermine si une liste d’entiers est triée ou pas.
#Exemples d’utilisation :
#$> ruby exo.rb 9 8 3
#Pas triée !
#$> ruby exo.rb 3 8 9 12
#"Triée !"
#$> ruby exo.rb “Salut”
#erreur.

def afficher_erreur_aucun_argument()
  puts " *** Vous n'avez pas saisi d'arguments *** "
end

def afficher_erreur_nombre_arguments()
  puts "erreur."
end

def afficher_erreur_string()
  puts "erreur."
end

def arguments_identiques()
    puts "erreur."
end

def affiche_resultat_tri (est_trie)
if est_trie == true
      puts "Triée !"
   else
      puts "Pas Triée !"
   end
end

def trie_ou_pas()
    est_trie = true
    valeur_precedente = ARGV.first.to_i
    for i in 1..(ARGV.size - 1)
        if ARGV[i].to_i < valeur_precedente
            est_trie = false
            break
        else
            valeur_precedente = ARGV[i].to_i
        end
    end
    affiche_resultat_tri(est_trie)
end

def verifie_arguments()
    if ARGV.empty?
    afficher_erreur_aucun_argument()

    elsif ARGV.size <= 1
    afficher_erreur_nombre_arguments()

    elsif ARGV[0].match(/[a-zA-Z]/)
    afficher_erreur_string()

    elsif ARGV.uniq.size != ARGV.size
    arguments_identiques()

    else
    trie_ou_pas()
    end
end

verifie_arguments()
