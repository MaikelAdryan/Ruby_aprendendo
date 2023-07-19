array = []
array.push "Adyan", "Maikel"
puts array
array << "Nicole"
puts array
array.insert 0, "Fulano"
puts array
array.delete "Fulano"
puts array.length #tamanho
puts array.sort #organizar a lista
puts array.first #primeiro elemento
puts array.last #ultimo elemento

fruits = []
fruits << 'uva'
fruits << 'pera'
fruits << 'maça'
fruits << 'amora'
fruits << 'laranja'

puts "O elemento existe" if fruits.include? 'uva'
fruits.each do 
  |fruit| puts "Temos a fruta: #{fruit}" 
end

puts "#{fruits.sort}"#colocando na ordem crescente o aray
puts "#{fruits.sort.reverse}"#colocando na ordem decrescente o array 

names = %w{adryan maikel nicole gustavo}
puts "#{names}"