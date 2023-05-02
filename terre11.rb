#24 to 12


#Créez un programme qui transforme une heure affichée en format 24h en une heure affichée en format 12h.
#Exemples d’utilisation :
#$> ruby exo.rb 23:40
#11:40PM
#Attention : midi et minuit.

def afficher_erreur_aucun_argument()
  puts " *** Vous n'avez pas saisi d'arguments *** "
end

def afficher_erreur_trop_arguments()
  puts " *** Vous avez trop d'arguments *** "
end

def afficher_erreur_argument_non_chiffre()
  puts " *** Vous devez saisir un chiffre en argument non une lettre *** "
end

def transforme_heure()
 heures_minutes = ARGV[0].split(":")
 heure = heures_minutes[0].to_i
 minutes = heures_minutes[1].to_i
 matin = "AM"
 aprem = "PM"

 if ARGV.empty?
    afficher_erreur_aucun_argument()
  elsif ARGV.size > 1
    afficher_erreur_trop_arguments()
  elsif ARGV[0].match(/[a-zA-Z]/)
    afficher_erreur_argument_non_chiffre()
  elsif heure <= 11
            print heure,":",minutes,matin
            puts "\n"
  elsif heure == 12
         print heure,":",minutes,aprem
          puts "\n"
  else
        print (heure - 12),":",minutes,aprem
         puts "\n"
  end
end

# Appel de la fonction principale
transforme_heure()