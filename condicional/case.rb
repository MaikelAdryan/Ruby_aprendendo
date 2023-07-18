month = "January"

case month
when "January"
  puts "Tem 30 dias"
when "February"
  puts "Tem 30 dias"
when "March"
  puts "Tem 30 dias"
when "April"
  puts "Tem 30 dias"
when "May"
  puts "Tem 30 dias"
when "June"
  puts "Tem 30 dias"
when "July"
  puts "Tem 30 dias"
when "August"
  puts "Tem 30 dias"
when "September"
  puts "Tem 30 dias"
when "October"
  puts "Tem 30 dias"
when "November"
  puts "Tem 30 dias"
when "December"
  puts "Tem 30 dias"
else
  puts "Não sei que mês é esse"
end

_month = 3

case _month
when 1..3
  puts "Você nasceu no inicio do ano"
when 9..12
  puts "Você nasceu no fim do ano"
when 4..6
  puts "Você nasceu no inicio do meio do ano"
when 7..9
  puts "Você nasceu no fim do meio do ano"
end
