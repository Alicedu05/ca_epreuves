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

def afficher_erreur_heure_inexistante()
  puts " *** l'heure saisie n'existe pas *** "
end

def transforme_heure()
 heures_minutes = ARGV[0].split(":")
 h = heures_minutes[0].to_i
 heure = sprintf("%02d", h)
 min = heures_minutes[1].to_i
 minutes = sprintf("%02d", min)


 matin = "AM"
 aprem = "PM"

 if ARGV.empty?
    afficher_erreur_aucun_argument()

  elsif ARGV.size > 1
    afficher_erreur_trop_arguments()

  elsif ARGV[0].match(/[a-zA-Z]/)
    afficher_erreur_argument_non_chiffre()

    elsif heure.to_i > 23 || minutes.to_i > 59
    afficher_erreur_heure_inexistante()

  elsif heure.to_i <= 11
      if heure.to_i == 00
         print (heure.to_i + 12),":",minutes,matin #gestion midi
          puts "\n"
      else
          print heure,":",minutes,matin
          puts "\n"
      end

  elsif heure.to_i == 12
         print heure,":",minutes,aprem #gestion midi
          puts "\n"

  else
        print (heure.to_i - 12),":",minutes,aprem
         puts "\n"
  end
end

# Appel de la fonction principale
transforme_heure()