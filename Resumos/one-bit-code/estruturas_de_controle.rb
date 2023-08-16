# Condicional If
puts "Digite um número de 1 a 10:"
number = gets.chomp.to_i

if number != 0 && number % 2 == 0
    puts "O #{number} é par!"
elsif number != 0 && number % 2 != 0
    puts "O #{number} é ímpar!"
else
    puts "Número inválido!"
end

puts "Digite o número do mês do seu nascimento:"
month = gets.chomp.to_i

# Condicional Case
case month
when 1
    puts "Você nasceu em Janeiro!"
when 2
    puts "Você nasceu em Fevereiro!"
when 3
    puts "Você nasceu em Março!"
when 4
    puts "Você nasceu em Abril!"
when 5
    puts "Você nasceu em Maio!"
when 6
    puts "Você nasceu em Junho!"
when 7
    puts "Você nasceu em Julho!"
when 8
    puts "Você nasceu em Agosto!"
when 9
    puts "Você nasceu em Setembro!"
when 10
    puts "Você nasceu em Outubro!"
when 11
    puts "Você nasceu em Novembro!"
when 12
    puts "Você nasceu em Dezembro!"
else
    puts "Mês inválido!"
end

# Condicional Unless
puts "Vamos ver se um número é divisível por outro?"
puts "Digite o dividendo:"
dividend = gets.chomp.to_i

puts "Digite o divisor:"
divisor = gets.chomp.to_i

unless dividend % divisor != 0
    puts "O número #{dividend} é divisível por #{divisor}!"
else
    puts "O número #{dividend} não é divisível por #{divisor}!"
end

# Loop While
count_while = 1
while count_while <= 5
    puts count_while
    count_while += 1
end

# Loop For
array = ["Um", "Dois", "Três", "Quatro", "Cinco"]
for i in array
    puts i 
end

# Loop 
count_loop = 0
loop do
    if count_loop == 5
        break
    end
    count_loop += 1
    puts count_loop
end

# Loop Times
5.times do
    puts "Este é o loop Times!"
end
