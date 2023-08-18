# Handles data output.
class Output

    # Prints the header.
    def output_head
        puts "*****************************************************************"
        puts "---------------------------CALCULADORA---------------------------"
    end

    # Prints the start message.
    def output_start
        puts "*****************************************************************"
        puts "Deseja fazer uma operação matemática? Digite 1 - SIM ou 0 - NÃO"
        print "-> "
    end

    # Ask for a number.
    def first_number
        puts "*****************************************************************"
        puts "Digite o primeiro número:"
        print "-> "
    end

    # Prints the menu.
    def output_menu(calculate)
        puts "Seu calculo até agora -> (#{calculate})"
        puts "*****************************************************************"
        puts "Selecione a operação:"
        puts "1 - SOMA"
        puts "2 - SUBTRAÇÃO"
        puts "3 - MULTIPLICAÇÃO"
        puts "4 - DIVISÃO"
        puts "0 - RESULTADO"
        print "-> "
    end

    # Ask for the next number.
    def next_number
        puts "*****************************************************************"
        puts "Digite o próximo número:"
        print "-> "
    end

    # Prints error message for invalid operation.
    def invalid_operation
        puts "*****************************************************************"
        puts "Operação inválida! Tente novamente."
    end 

    # Prints error message for invalid option.
    def invalid_option
        puts "*****************************************************************"
        puts "Opção inválida! Tente novamente."
    end 

    # Prints error message for invalid number.
    def invalid_number
        puts "*****************************************************************"
        puts "Número inválido! Tente novamente."
    end 

    # Prints error message for division by zero.
    def division_zero
        puts "Não é possível dividir por zero! Tente novamente."
    end

    # Prints message for result.
    def message_result(calculate_string)
        puts "*****************************************************************"
        print "O resultado para (#{calculate_string}) é -> "
    end

    # Prints the final message.
    def output_bye
        puts "*****************************************************************"
        puts "Até logo!"
        puts "*****************************************************************"
    end
end