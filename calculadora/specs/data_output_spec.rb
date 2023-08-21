require 'rspec'
require_relative '../src/data_output'

describe 'Class Output' do
    before(:each) do
        @output = Output.new
    end

    it 'should print the message of method output_head.' do
        expect{@output.output_head}.to output(
            "*****************************************************************\n" +
            "---------------------------CALCULADORA---------------------------\n"
        ).to_stdout
    end

    it 'should print the message of method output_start.' do
        expect{@output.output_start}.to output(
            "*****************************************************************\n" +
            "Deseja fazer uma operação matemática? Digite 1 - SIM ou 0 - NÃO\n" +
            "-> "
        ).to_stdout
    end

    it 'should print the message of method first_numbe.' do
        expect{@output.first_number}.to output(
            "*****************************************************************\n" +
            "Digite o primeiro número:\n" +
            "-> "
        ).to_stdout
    end

    it 'should print the message of method output_menu.' do
        calculate_string = '10 + 10'
        expect{@output.output_menu(calculate_string)}.to output(
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
        ).to_stdout
    end

    it 'should print the message of method next_number.' do
        expect{@output.next_number}.to output(
            "*****************************************************************\n" +
            "Digite o próximo número:\n" +
            "-> "
        ).to_stdout
    end

    it 'should print the message of method invalid_operation.' do
        expect{@output.invalid_operation}.to output(
            "*****************************************************************\n" +
            "Operação inválida! Tente novamente.\n"
        ).to_stdout
    end

    it 'should print the message of method invalid_option.' do
        expect{@output.invalid_option}.to output(
            "*****************************************************************\n" +
            "Opção inválida! Tente novamente.\n"
        ).to_stdout
    end

    it 'should print the message of method invalid_number.' do
        expect{@output.invalid_number}.to output(
            "*****************************************************************\n" +
            "Número inválido! Tente novamente.\n"
        ).to_stdout
    end

    it 'should print the message of method division_zero.' do
        expect{@output.division_zero}.to output(
            "Não é possível dividir por zero! Tente novamente.\n"
        ).to_stdout
    end

    it 'should print the message of method delete_confirme.' do
        expect{@output.delete_confirme}.to output(
            "*****************************************************************\n" +
            "Você tem certeza que quer apagar a última operação? Digite 1 - SIM ou 0 - NÃO\n" +
            "-> "
        ).to_stdout
    end

    it 'should print the message of method delete_canceled.' do
        expect{@output.delete_canceled}.to output(
            "Nada foi apagado!\n"
        ).to_stdout
    end

    it 'should print the message of method delete_error.' do
        expect{@output.delete_error}.to output(
            "Não há nada para apagar!\n"
        ).to_stdout
    end

    it 'should print the message of method method message_result.' do
        calculate_string = '10 + 10'
        result = '20'
        expect{@output.message_result(calculate_string, result)}.to output(
            "*****************************************************************\n" +
            "O resultado para (#{ calculate_string }) é -> " + 
            result + 
            "\n"
        ).to_stdout
    end

    it 'should print the message of method output_exit.' do
        expect{@output.output_exit}.to output(
            "*****************************************************************\n" +
            "Até logo!\n" +
            "*****************************************************************\n"
        ).to_stdout
    end
end