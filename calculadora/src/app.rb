require_relative 'data_output'
require_relative 'data_input'
require_relative 'calc'

# Creates an instance of class Output.
output = Output.new

# Creates an instance of class Input.
input = Input.new

output.output_head

# User interaction loop.
loop do
    output.output_start
    option = input.input_option(gets.chomp)
    
    # Checks the option chosen by the user.
    if option == 1
        output.first_number
        number = input.input_float(gets.chomp)

        # While number is false asks for a new number.
        while !number
            output.invalid_number
            output.first_number
            number = input.input_float(gets.chomp)
        end

        # Creates an instance of class Calc receiving number as a parameter.
        calc = Calc.new("#{number}")
        
        # Loop for selecting operations.
        loop do
            output.output_menu(calc.calculate)
            operation = input.input_option(gets.chomp)

            # Performs the selected operation.
            case operation
            when 1
                output.next_number
                number = input.input_float(gets.chomp)
                number ? calc.addition(number) : output.invalid_number
            when 2
                output.next_number
                number = input.input_float(gets.chomp)
                number ? calc.subtraction(number) : output.invalid_number
            when 3
                output.next_number
                number = input.input_float(gets.chomp)
                number ? calc.multiplication(number) : output.invalid_number
            when 4
                output.next_number
                number = input.input_float(gets.chomp)
                number ? calc.division(number) : output.invalid_number
            when 0
                calc.equal
                break
            else
                output.invalid_operation
            end
        end

    elsif option == 0
        output.output_bye
        break
    else
        output.invalid_option
    end
end
