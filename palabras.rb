file = File.open('palabras.txt','r')
data = file.readlines.map{|elem| elem.chomp}
file.close

def find_element(data,element)
  puts data.include?(element)
end

find_element(data,'casa')
find_element(data,'goma')
