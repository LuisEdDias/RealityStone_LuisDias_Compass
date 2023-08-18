require_relative 'data_output'

# Creates a string with valid input data and executes the calculation.
class Calc
    attr_accessor :calculate, :output

    # Creates an instance of class Output.
    # Initializes the array calculate.
    def initialize
        @output = Output.new
        @calculate = []
    end

    # Turns the array calculate into a string.
    def calculate_string
        @calculate.join
    end

    # If the number is not false adds a float to array calculate.
    def start(number)
        number ? @calculate << "#{number}" : @output.invalid_number
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

    # If number is false prints error message else checks if number is different from zero.
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

    # If delete is equals 1 checks if the array is empty. If it is, print an error message 
    # else delete the last array element.
    # If delete is equals 0 prints a message for delete canceled.
    # If delete is any other answer prints for invalid option.
    def delete_last(delete)
        if delete == 1
            @calculate.empty? ? @output.delete_error : @calculate.pop
        elsif delete == 0
            @output.delete_canceled
        else
            @output.invalid_option
        end
    end


    # Prints the answer calculated by the eval method that receives the variable calculate_string as a parameter.
    def equal
        @output.message_result(calculate_string)
        puts eval calculate_string
    end
end
