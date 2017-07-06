file = File.open('pokemon.txt','r')
pokedex = file.readlines.map { |w| w.chomp }
file.close


pokedex = pokedex.map{|e| e.split(', ')}.select{|type| type[2]=="Fire"}
print pokedex
