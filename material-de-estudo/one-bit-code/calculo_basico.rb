#Entrada de dados
puts "Vamos fazer cálculos com dois números!"
puts "Digite o primeiro número:"
first_number = gets.chomp.to_i

puts "Digite o segundo número:"
second_number = gets.chomp.to_i

#Cálculos
addition = first_number + second_number

subtraction = first_number - second_number

multiplication = first_number * second_number

division = first_number / second_number

#Saída de dados
puts
puts "O resultado da soma de #{first_number} com #{second_number} é -> #{addition}"
puts
puts "O resultado da subtração de #{first_number} com #{second_number} é -> #{subtraction}"
puts
puts "O resultado da multiplicação de #{first_number} por #{second_number} é -> #{multiplication}"
puts
puts "O resultado da divisão de #{first_number} por #{second_number} é -> #{division}"
