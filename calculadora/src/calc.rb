require_relative 'data_output'

# Creates a string with valid input data and executes the calculation.
class Calc
    attr_accessor :calculate, :output

    # Creates an instance of class Output.
    # Initializes the array with a float.
    def initialize(number)
        @output = Output.new
        @calculate = ["#{number}"]
    end

    # Turns the calculate array into a string.
    def calculate_string
        @calculate.join
    end

    # If the number is not false adds the plus sign and a float at the end of array calculate
    # else prints error message.
    def addition(number)
        number ? @calculate << " + #{number}" : @output.invalid_number
    end

    # If the number is not false adds the minus sign and a float at the end of array calculate
    # else prints error message.
    def subtraction(number)
        number ? @calculate << " - #{number}" : @output.invalid_number
    end

    # If the number is not false adds the multiplication sign and a float at the end of array calculate
    # else prints error message.
    def multiplication(number)
        number ? @calculate << " * #{number}" : @output.invalid_number
    end

    # If the number is false prints error message else checks if the number is different from zero.
    # If is true adds the division sign and a float at the end of array calculate else prints error message.
    def division(number)
        if number
            if number == 0
                @output.division_zero
            else
                @calculate << " / #{number}"
            end
        else
            @output.invalid_number
        end
        
    end

    #def delete_last


    # Prints the answer calculated by the eval method that receives the variable calculate_string as a parameter.
    def equal
        @output.message_result(calculate_string)
        puts eval calculate_string
    end
end
