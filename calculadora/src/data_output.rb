# Handles data output.
class Output

    def output_head
        puts "*****************************************************************"
        puts "---------------------------CALCULADORA---------------------------"
    end

    def output_start
        puts "*****************************************************************"
        puts "Deseja fazer uma operação matemática? Digite 1 - SIM ou 0 - NÃO"
        print "-> "
    end

    def first_number
        puts "*****************************************************************"
        puts "Digite o primeiro número:"
        print "-> "
    end

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

    def next_number
        puts "*****************************************************************"
        puts "Digite o próximo número:"
        print "-> "
    end

    def invalid_operation
        puts "*****************************************************************"
        puts "Operação inválida! Tente novamente."
    end 

    def invalid_option
        puts "*****************************************************************"
        puts "Opção inválida! Tente novamente."
    end 

    def invalid_number
        puts "*****************************************************************"
        puts "Número inválido! Tente novamente."
    end 

    def output_bye
        puts "*****************************************************************"
        puts "Até logo!"
        puts "*****************************************************************"
    end
end