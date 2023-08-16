puts "*****************************************************************"
puts "Precisamos de 3 números para elevar à segunda potência!"
puts "*****************************************************************"
print "Digite o primeiro número: "
first_number = gets.chomp.to_i

print "Digite o segundo número: "
second_number = gets.chomp.to_i

print "Digite o terceiro número: "
third_number = gets.chomp.to_i
puts "*****************************************************************"
array = []
result = []
array.push(first_number)
array.push(second_number)
array.push(third_number)

array.each do |number|
    result.push(number * number)
end

puts "O resultado de " + array.join(", ") + " elevado à segunda potência é " + result.join(", ")

puts "*****************************************************************"
puts "Vamos criar um hash com 3 elementos chave/valor!"
puts "*****************************************************************"
hash = {}

puts "Digite a primeira chave:"
key = gets.chomp
puts "Agora digite um valor para ela:"
value = gets.chomp
hash[key] = value

puts "*****************************************************************"
puts "Digite a segunda chave:"
key = gets.chomp
puts "Agora digite um valor para ela:"
value = gets.chomp
hash[key] = value

puts "*****************************************************************"
puts "Digite a terceira chave:"
key = gets.chomp
puts "Agora digite um valor para ela:"
value = gets.chomp
hash[key] = value
puts "*****************************************************************"

hash.each do |key, value|
    puts "Uma das chaves é #{key} e seu valor é #{value}"
end
puts "*****************************************************************"

#Seleção de elemento (maior valor)
numbers = {A: 10, B: 30, C: 20, D: 25, E: 15}
selection_key = " "
selection_value = 0

numbers.each do |key, value|
    if value > selection_value
        selection_key = key
        selection_value = value
    end
end
puts numbers
puts "O elemento do hash com valor mais alto é :#{selection_key}=>#{selection_value}"
puts "*****************************************************************"
