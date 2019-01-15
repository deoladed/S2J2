# frozen_string_literal: true

def which_day(day_trader)
# On supprime les valeurs haute en debut d'array
  daytrad = day_trader

	while day_trader.index(day_trader.max) < day_trader.index(day_trader[1])
		day_trader.delete(day_trader.max)
	end

#On supprime la fin de fleche apres la valeur superieure
	day_trader2 = day_trader.take((day_trader.index(day_trader.max).to_i) + 1)


#On fait au moins la longueur de la fleche fois, si ecart max different de
#l'ecart entre la premiere et la max, supprimer la premiere
	day_trader2.size.times do
		if (day_trader2.max - day_trader2.min) == (day_trader2.max - day_trader2[0])
			puts "Jour pour acheter : #{daytrad.index(day_trader2.min) + 1}, valeur : #{day_trader2.min}"
			puts "Jour pour vendre : #{daytrad.index(day_trader2.max) + 1}, valeur : #{day_trader2.max}" 
			
			p result = [(daytrad.index(day_trader2.min) + 1).to_i, (daytrad.index(day_trader2.max) + 1).to_i]
			return result
		else
			day_trader2.delete(day_trader2[0])
		end
	end
end

which_day([17, 7, 4, 1, 3, 6, 9, 15, 8, 16, 6, 1, 10])




# puts ecartmax = day_trader2.max - day_trader2.min
# puts ecartnow = day_trader2.max - day_trader2[0] 
# if ecartmax != ecartnow

# else
# 	puts day_trader.max
# end

 

# puts day_trader[day_trader.index(day_trader.min)]
# puts day_trader[day_trader.min]

# #si la position de daytrad max est bien apres daytradermin

# puts day_trader.index(day_trader.max)

# 	day_trader.index(day_trader.max) < day_trader.index(day_trader.min)

# 	puts day_trader.max
# 	puts day_trader.min


# puts ecartmax = day_trader.max - day_trader.min
# puts ecartnow = day_trader.max - day_trader[0] 



# if ecartmax != ecartnow

# day_trader.each do |jour|




#a.drop_while {|i| i < 3 }   #=> [3, 4, 5, 0]




# p day_trader
# day_trader.delete(day_trader[0])
# p day_trader







# # tableau nombre jours
# nombre_jours = []
# 1.upto(day_trader.size) do |i|
# 	nombre_jours << i
# end




#creation du hash
# correspondances = Hash[day_trader.zip(nombre_jours)]
# p correspondances
# puts correspondances

# puts day_trader.min
# puts day_trader[correspondances[day_trader.min] .. -1]

# ecart = day_trader[correspondances[day_trader.min] .. -1].join.to_i - day_trader.min.to_i
# puts ecart




# prixmin = 10
# prixmax = 0
# correspmin = ""
# correspmax = ""
# ecart = 0

# def minmax(correspondances)
# 	correspondances.each do |prix, corresp|
# 		if prix < prixmin 
# 			prixmin = prix
# 			correspmin = corresp
# 		end
# 		if prix > prixmax
# 			prixmax = prix
# 			correspmax = corresp
# 		end
# 	end
# 	puts "Prix min => #{prixmin} : #{correspmin}"
# 	puts "Prix min => #{prixmax} : #{correspmax}"
# end

# def verifordre(correspondances, day_trader)
# 	if correspmax < correspmin.to_i 
# 		correspondances.delete(prixmax)
# 		day_trader.delete(prixmax)
# 		prixmax = 0
# 		puts "Prix max avant prix min"
# 	end
# end
# minmax(correspondances)
# def verifecar(day_trader)
# 	ecart = prixmax - prixmin
# 	ecartmax = day_trader.max - day_trader.min
# 	puts "Ecart max : #{ecartmax1}"
# end

# def verif?(correspondances, day_trader)
# 	if correspondances[day_trader.min] > correspondances[day_trader.max]
# 		correspondances.delete(day_trader.min)
# 		day_trader.delete(day_trader.min)
# 	end
# end


# prixmin = 10
# prixmax = 0
# correspmin = ""
# correspmax = ""

# correspondances.each do |prix, corresp|
# 	if prix < prixmin 
# 		prixmin = prix
# 		correspmin = corresp
# 	end
# 	if prix > prixmax
# 		prixmax = prix
# 		correspmax = corresp
# 	end
# end

# p day_trader
# p correspondances

# if correspondances[day_trader.min] > correspondances[day_trader.max]
# 	correspondances.delete(day_trader.min)
# 	day_trader.delete(day_trader.min)
# end





# ecartmax2 = day_trader.max - day_trader.min
# if ecartmax2 == prixmax - prixmin
# 	puts "Jour pour acheter : #{prixmin}, jour pour vendre : #{prixmax}"
# end