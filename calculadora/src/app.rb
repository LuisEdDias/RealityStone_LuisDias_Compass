require_relative 'input_processing'
require_relative 'calc'

# Creates an instance of class Input.
data = Input.new

puts "*****************************************************************"
puts "---------------------------CALCULADORA---------------------------"

# User interaction loop.
loop do
    puts "*****************************************************************"
    puts "Deseja fazer uma operação matemática? Digite 1 - SIM ou 0 - NÃO"
    print "-> "
    option = data.input_start(gets.chomp)
    
    # Checks the option chosen by the user.
    if option == 1
        number = false

        # While number is false asks for a new number.
        while !number
            puts "*****************************************************************"
            print "-> "
            puts "Digite o primeiro número:"
            number = data.input_float(gets.chomp)
        end

        # Creates an instance of class Calc receiving number as a parameter.
        calc = Calc.new("#{number}")
        
        # Loop for selecting operations.
        loop do
            puts "*****************************************************************"
            puts "Seu calculo até agora -> (#{calc.calculate})"
            puts "*****************************************************************"
            puts "Selecione a operação:"
            puts "1 - SOMA"
            puts "2 - SUBTRAÇÃO"
            puts "3 - MULTIPLICAÇÃO"
            puts "4 - DIVISÃO"
            puts "0 - RESULTADO"
            print "-> "
            operation = data.input_start(gets.chomp)
           
            puts "*****************************************************************"

            # Performs the selected operation.
            case operation
            when 1
                puts "Digite o próximo número:"
                print "-> "
                number = data.input_float(gets.chomp)
                calc.addition(number)
            when 2
                puts "Digite o próximo número:"
                print "-> "
                number = data.input_float(gets.chomp)
                calc.subtraction(number)
            when 3
                puts "Digite o próximo número:"
                print "-> "
                number = data.input_float(gets.chomp)
                calc.multiplication(number)
            when 4
                puts "Digite o próximo número:"
                print "-> "
                number = data.input_float(gets.chomp)
                calc.division(number)
            when 0
                calc.equal
                break
            else
                puts "Operação inválida!"
            end
        end

    elsif option == 0
        puts "*****************************************************************"
        puts "Até logo!"
        puts "*****************************************************************"
        break
    else
        puts "*****************************************************************"
        puts "Opção inválida! Tente novamente." 
    end
end
