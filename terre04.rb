#!/usr/bin/env ruby
#Pair ou Impair

#Créez un programme qui permet de déterminer si l’argument donné est un entier pair ou impair..
#Exemples d’utilisation :
#$> ruby exo.rb 2
#pair
#$> ruby exo.rb 5
#impair
#$> ruby exo.rb Bonjour
#Tu ne me la mettras pas à l’envers.
#$> ruby exo.rb
#Tu ne me la mettras pas à l’envers.
#Attention : gérez aussi les entiers négatifs.


entier = ARGV[0]
erreur = "Tu ne me la mettras pas à l’envers."

if entier =~ /^[1-9]+$/ #regex debute par 1 et termine par 9 avec au moins un chiffre
  integer = Integer(entier) #transforme mon string de chiffre en integer pour pouvoir effectuer un calcule avec les valeurs.

  if integer % 2 == 0
		puts "Pair"
	else
		puts "Impair"
	end
else
  puts "#{erreur}"
end

