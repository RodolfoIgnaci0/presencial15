file = File.open('pelicula.txt','r')
data = file.readlines.map{|i| i.chomp.split(', ')}
file.close

puts "Archivo tiene #{data.length} lineas"
