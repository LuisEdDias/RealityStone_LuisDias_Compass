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
        # Creates an instance of class Calc.
        calc = Calc.new
        
        output.first_number
        number = input.input_float(gets.chomp)

        # While number is false asks for a new number.
        while !number
            output.invalid_number
            output.first_number
            number = input.input_float(gets.chomp)
        end

        # Creates an instance of class Calc receiving number as a parameter.
        calc.start number
        
        # Loop for selecting operations.
        loop do
            output.output_menu(calc.calculate_string)
            operation = input.input_option(gets.chomp)

            # Execute the selected operation.
            case operation
            when 1
                output.next_number
                number = input.input_float(gets.chomp)
                calc.addition number
            when 2
                output.next_number
                number = input.input_float(gets.chomp)
                calc.subtraction number
            when 3
                output.next_number
                number = input.input_float(gets.chomp)
                calc.multiplication number
            when 4
                output.next_number
                number = input.input_float(gets.chomp)
                calc.division number
            when 5
                output.delete_confirme
                delete = input.input_option(gets.chomp)
                calc.delete_last delete
            when 0
                calc.equal
                break
            else
                output.invalid_operation
            end
        end
    elsif option == 0
        output.output_exit
        break
    else
        output.invalid_option
    end
end
