file = File.open('pelicula.txt','r')
data = file.read
file.close

def words(text)
  print "Cantidad de palabras es #{text.split(' ').length}"
end

def words2(text, other_text)
  text = text.split(' ')
  aparicion = text.select{|word| word.downcase.include? other_text}
  puts "Hay #{aparicion.count} apariciones de la palabra en el texto"
end


words(data)
#words2(data,'guerra')
