puts "*****************************************************************"
puts "---------------------------CALCULADORA---------------------------"

loop do
    puts "*****************************************************************"
    puts "Deseja fazer uma operação matemática? Digite 1 - SIM ou 0 - NÃO"
    print "-> "
    option = gets.chomp.to_i

    if option == 0
        puts "*****************************************************************"
        puts "Até logo!"
        puts "*****************************************************************"
        break
    end
    puts "*****************************************************************"
    puts "Digite o primeiro número:"
    print "-> "
    result = gets.chomp.to_i

    loop do
        puts "*****************************************************************"
        puts "Selecione a operação:"
        puts "1 - SOMA"
        puts "2 - SUBTRAÇÃO"
        puts "3 - MULTIPLICAÇÃO"
        puts "4 - DIVISÃO"
        puts "0 - RESULTADO"
        print "-> "
        operation = gets.chomp.to_i
        puts "*****************************************************************"

        case operation
        when 1
            puts "Digite o próximo número:"
            print "-> "
            result += gets.chomp.to_i
        when 2
            puts "Digite o próximo número:"
            print "-> "
            result -= gets.chomp.to_i
        when 3
            puts "Digite o próximo número:"
            print "-> "
            result *= gets.chomp.to_i
        when 4
            puts "Digite o próximo número:"
            print "-> "
            result /= gets.chomp.to_i
        when 0
            puts "O resultado das operações é: #{result}"
            break
        else
            puts "Operação inválida!"
        end
    end
end
