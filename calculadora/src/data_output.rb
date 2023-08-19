# Handles data output.
class Output
    attr_accessor :message

    # Prints the header.
    def output_head
        @message = "*****************************************************************\n" +
                   "---------------------------CALCULADORA---------------------------\n"
        print @message
    end

    # Prints the start message.
    def output_start
        @message = (
            "*****************************************************************\n" +
            "Deseja fazer uma operação matemática? Digite 1 - SIM ou 0 - NÃO\n" +
            "-> "
        )
        print @message
    end

    # Ask for a number.
    def first_number
        @message = (
            "*****************************************************************\n" +
            "Digite o primeiro número:\n" +
            "-> "
        )
        print @message
    end

    # Prints the menu.
    def output_menu(calculate_string)
        @message = (
            "Seu calculo até agora -> (#{ calculate_string })\n" +
            "*****************************************************************\n" +
            "Selecione a operação:\n" +
            "1 - SOMA\n" +
            "2 - SUBTRAÇÃO\n" +
            "3 - MULTIPLICAÇÃO\n" +
            "4 - DIVISÃO\n" +
            "5 - APAGAR ÚLTIMA OPERAÇÃO\n" +
            "0 - RESULTADO\n" +
            "-> "
        )
        print @message
    end

    # Ask for the next number.
    def next_number
        @message = (
            "*****************************************************************\n" +
            "Digite o próximo número:\n" +
            "-> "
        )
        print @message
    end

    # Prints error message for invalid operation.
    def invalid_operation
        @message = (
            "*****************************************************************\n" +
            "Operação inválida! Tente novamente.\n"
        )
        print @message
    end 

    # Prints error message for invalid option.
    def invalid_option
        @message = (
            "*****************************************************************\n" +
            "Opção inválida! Tente novamente.\n"
        )
        print @message   
    end 

    # Prints error message for invalid number.
    def invalid_number
        @message = (
            "*****************************************************************\n" +
            "Número inválido! Tente novamente.\n"
        )
        print @message  
    end 

    # Prints error message for division by zero.
    def division_zero
        @message = (
            "Não é possível dividir por zero! Tente novamente.\n"
        )
        print @message
    end

    # Prints message to confirme delete.
    def delete_confirme
        @message = (
            "*****************************************************************\n" +
            "Você tem certeza que quer apagar a última operação? Digite 1 - SIM ou 0 - NÃO\n" +
            "-> "
        )
        print @message   
    end

    # Prints message for delete canceled.
    def delete_canceled
        @message = (
            "Nada foi apagado!\n"
        )
        print @message
    end

    # Prints error message for delete.
    def delete_error
        @message = (
            "Não há nada para apagar!\n"
        )
        print @message
    end

    # Prints message for result.
    def message_result(calculate_string)
        @message = (
            "*****************************************************************\n" +
            "O resultado para (#{ calculate_string }) é -> "
        )
        print @message 
    end

    # Prints the final message.
    def output_exit
        @message = (
            "*****************************************************************\n" +
            "Até logo!\n" +
            "*****************************************************************\n"
        )
        print @message
    end
end
