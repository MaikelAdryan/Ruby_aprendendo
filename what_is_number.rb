keep_playing = "s"
while keep_playing == "s"
  puts "Adivinhe qual número estou pensando"
  number_user = gets.to_i
  number_cpu = Random.rand(99)+1
  chance = 0;
  while number_user != number_cpu
    if number_cpu < number_user
      puts "Digite um número menor"
      number_user = gets.to_i
    elsif number_cpu > number_user
      puts "Digite um número maior"
      number_user = gets.to_i
    end
    chance+=1;
  end
  puts "Acertou em  #{chance} tentativas, a maquina escolheu o numero #{number_cpu}"
  puts "Deseja jogar novamente? S ou N"
  keep_playing = gets.chomp
end
puts "THANK'S!"