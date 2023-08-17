# Creates a string with valid input data and executes the calculation.
class Calc
    attr_accessor :calculate

    # Initializes the string with a valid number.
    def initialize(number)
        @calculate = number
    end

    # Adds the plus sign and a float to the string if number is not false.
    def addition(number)
        unless !number
            @calculate += " + #{number}"
        end
    end

    # Adds the minus sign and a float to the string if number is not false.
    def subtraction(number)
        unless !number
            @calculate += " - #{number}"
        end
    end

    # Adds the multiplication sign and a float to the string if number is not false.
    def multiplication(number)
        unless !number
            @calculate += " * #{number}"
        end
    end

    # If the number is not false checks if the number is different from zero.
    # If true adds the division sign and a float to the string else prints error message.
    def division(number)
        unless !number
            if number == 0
                puts "Não é possível dividir por zero! Tente novamente."
            else
                @calculate += " / #{number}"
            end
        end
    end

    # Prints the answer calculated by the eval method that receives the variable @calculate as a parameter.
    def equal
        puts "*****************************************************************"
        print "O resultado para (#{@calculate}) = -> "
        puts eval @calculate
    end
end
