#12 to 24

#Créez un programme qui transforme une heure affichée en format 12h en une heure affichée au format 24h.
#Exemples d’utilisation :
#$> ruby exo.rb 11:40PM
#23:40
#Attention : midi et minuit.

def afficher_erreur_aucun_argument()
  puts " *** Vous n'avez pas saisi d'arguments *** "
end

def afficher_erreur_trop_arguments()
  puts " *** Vous avez trop d'arguments *** "
end

def afficher_erreur_heure_inexistante()
  puts " *** l'heure saisie n'existe pas *** "
end

def transforme_heure()
 heures_minutes = ARGV[0]
 regex = /(\d{1,2}):(\d{2})([aApP][mM])/
 matches = heures_minutes.match(regex)

 heure = matches[1].rjust(2, "0") #zero initial
 minutes = matches[2].rjust(2, "0")
 am_ou_pm = matches[3].to_s

    if ARGV.empty?
    afficher_erreur_aucun_argument()

    elsif ARGV.size > 1
    afficher_erreur_trop_arguments()

    elsif heure.to_i > 12 || minutes.to_i > 59
    afficher_erreur_heure_inexistante()

    elsif am_ou_pm == "AM" || am_ou_pm == "am" && heure.to_i == 12 #gestion minuit
        minuit = (heure.to_i - 12)
        print sprintf("%02d", minuit),":",minutes #affichage sur 2 digit
        puts "\n"

    elsif am_ou_pm == "PM" || am_ou_pm == "pm"
    	if heure.to_i == 12 #gestion midi
    		 print heure.to_i ,":",minutes
        	 puts "\n"

        else  print (heure.to_i + 12),":",minutes
        puts "\n"

    	end

    else print heure,":",minutes
         puts "\n"
    end
end

# Appel de la fonction principale
transforme_heure()