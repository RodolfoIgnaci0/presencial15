def create_index_string(palabra1, palabra2)
  file = File.open('index.html','w')
  file.puts "<p>#{palabra1}</p><p>#{palabra2}</p>"
  file.close
end

def create_index_array(palabra1, palabra2, array)
  file = File.open('index.html','w')
  file.puts "<p>#{palabra1}</p><p>#{palabra2}</p>"
  if array.length >= 1
    file.puts '<ul>'
    array.each{|iterator| file.puts "<li>#{iterator}</li>"}
    file.puts '</ul>'
  end
  file.close
end

def color(palabra1, palabra2, array, color)
  file = File.open('index.html','w')
  file.puts "<header><style> p{ background-color: #{color}} </style> </header>"
  file.puts "<p>#{palabra1}</p><p>#{palabra2}</p>"
  if array.length > 0
    file.puts '<ul>'
    array.each{|iterator| file.puts "<ol>#{iterator}</ol>"}
    file.puts '</ul>'
  end
  file.close
end

#create_index_string('palabra1','palabra2')
#create_index_array('palraasd1','palabras2',[])
#create_index_array('palraasd1','palabras2',['hola','casi','cosa','balbla'])
color('palraasd1','palabras2',['hola','casi','cosa','balbla'],'lightblue')
