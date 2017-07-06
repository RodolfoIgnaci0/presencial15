file = File.open('sample.txt','r')
data = file.readlines
file.close

suma = data.inject(0){|suma, iteracion| suma + iteracion.split(' ')[2].to_i}
puts suma
