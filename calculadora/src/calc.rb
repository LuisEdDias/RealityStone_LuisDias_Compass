class Calc
    attr_accessor :calculate

    def addition(number)
        unless !number
            @calculate += " + #{number}"
        end
    end

    def subtraction(number)
        unless !number
            @calculate += " - #{number}"
        end
    end

    def multiplication(number)
        unless !number
            @calculate += " * #{number}"
        end
    end

    def division(number)
        unless !number
            if number == 0
                puts "Não é possível dividir por zero! Tente novamente."
            else
                @calculate += " / #{number}"
            end
        end
    end

    def equal
        puts "*****************************************************************"
        print "O resultado para (#{@calculate}) é -> "
        puts eval @calculate
    end
end