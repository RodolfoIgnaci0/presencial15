def menu_main
  puts "********** Menu **********"
  puts "1.- productos existentes"
  puts "2.- cantidad de stock de un producto"
  puts "3.- productos no registrados en bodega"
  puts "4.- existencia total menor a un valor ingresado"
  puts "5.- ingresar producto / stock"
  puts "6.- salir"

end

def sub_menu
  puts "***** Existencias *******"
  puts "1.- Existencia por producto"
  puts "2.- Existencia total por tienda"
  puts "3.- Existencia total en todas las tiendas"
  puts "4.- volver al menu principal"
end

file = File.open('productos.txt', 'r')
data = file.readlines.map(&:chomp)
file.close

productos = {}
producto = {}
data.each_with_index do |e, index|
  producto_ = e.split(', ')
  producto = {tienda1: producto_[1],
              tienda2: producto_[2],
              tienda3: producto_[3]}
  productos[producto_[0]] = producto
end

=begin
producto1 = data[0].split(', ')
puts "Stock de #{producto1[0]} es #{producto1[1].to_i + producto1[2].to_i + producto1[3].to_i}"
producto2 = data[1].split(', ')
puts "Stock de #{producto2[0]} es #{producto2[1].to_i + producto2[2].to_i + producto2[3].to_i}"
producto3 = data[2].split(', ')
puts "Stock de #{producto3[0]} es #{producto3[1].to_i + producto3[2].to_i + producto3[3].to_i}"
producto4 = data[3].split(', ')
puts "Stock de #{producto4[0]} es #{producto4[1].to_i + producto4[2].to_i + producto4[3].to_i}"
producto5 = data[4].split(', ')
puts "Stock de #{producto5[0]} es #{producto5[1].to_i + producto5[2].to_i + producto5[3].to_i}"
=end
=begin
booleano = true
booleano2 = true
begin
  menu_main
  booleano = true
  puts "Ingrese opcion"
  opcion = gets.chomp
  case opcion
    when '1'
      begin
        sub_menu
        booleano2 = true
        puts "Ingrese opcion"
        opcion = gets.chomp
        case opcion
          when '1'
          when '2'
          when '3'
          when '4'
            booleano2 = false
          else
            puts "opcion invalida"
          end
      end while booleano2
    when '2'
    when '3'
    when '4'
    when '5'
    when '6'
      booleano = false
    else
    puts 'Opcion invalida'
  end
end while booleano
=end
