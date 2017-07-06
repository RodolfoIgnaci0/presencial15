file = File.open('multiples_lineas.txt','r')
data = file.readlines.map { |w| w.chomp }
file.close

data.each_slice(5){ |pelicula| print pelicula}
