# frozen_string_literal: true

def which_day(day_trader)
  day_tradercp = []
  day_trader.each { |i| day_tradercp << i } # on sauvegarde daytrader pour retrouver index du resultat
  day_trader.slice!(0) while day_trader[0] > day_trader[1] # on supprime les premiers nr plus grands que le suivant
  day_trader.slice!(-1) while day_trader[-1] < day_trader.max # puis les derniers plus petits que le plus grand
  day_trader.slice!(0) while day_trader.max - day_trader[0] < day_trader.max - day_trader.min # et on suppprime le premier de l'array en boucle s'il ne respect pas l'ecart max
  [day_tradercp.index(day_trader.first), day_tradercp.index(day_trader.last)] # on retourne l'index du resultat dans l'array originale ("le jour")
end
which_day([17, 7, 4, 3, 34, 6, 9, 15, 45, 8, 16, 6, 1, 10])