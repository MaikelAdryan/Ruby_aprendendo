hash_of_numbers = {'um' => 1, 'dois' => 2}
puts "#{hash_of_numbers['um']}"
peaple = {'name' => 'Adryan', 'idade' => 21, 'altura' => 1.74}
puts "#{peaple['name']}"

peaple.each do |key, value|
  puts "O valor da chave #{key} é #{value}"
end