#!/usr/bin/env ruby
#Divisions

#Créez un programme qui affiche le résultat et le reste d’une division entre deux nombres.
#Exemples d’utilisation :
#$> python exo.py 5 2
#résultat: 2
#reste: 1
#$> python exo.py 10 0
#erreur.
#$> python exo.py 3 5
#erreur.

chiffres = ARGV
e = "erreur"

def transformer(*args) #nom de ma methode plus paramètres
  args.map(&:to_i) #renvoi un tableau d'integer pour chaque args passé à la methode
end
resultat = transformer(ARGV[0], ARGV[1]) # passer à la methode les arguments pour qu'elle les transformes

a = resultat[0]
b = resultat[1]
if a >= b && a > 0 && b > 0 
	reste = a % b
	resultat = (a - reste)/b
	puts "résultat: #{resultat}"
	puts "reste: #{reste}"
else
	puts "#{e}"
end