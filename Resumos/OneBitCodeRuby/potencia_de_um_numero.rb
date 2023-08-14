#Método
def exponenciation(base, exponent)
    result = 1
    exponent.times do
        result *= base
    end
    puts "O resultado é #{result}"
end

puts "*****************************************************************"
puts "-----------------------CALCULAR POTÊNCIA-------------------------"
puts "*****************************************************************"
puts "Digite a base da potência:"
base = gets.chomp.to_i
puts
puts "Agora digite o expoente:"
exponent = gets.chomp.to_i
puts "*****************************************************************"

#Chama o método passando os parâmetros
exponenciation(base, exponent)
