class Calc
    attr_accessor :calculate

    def addition(number)
        if !number
            puts "Número inválido! Tente novamente."
        else
            @calculate += " + #{number.to_f}"
        end
        puts "*****************************************************************"
        puts "Sua conta até agora -> (#{@calculate})"
    end

    def subtraction(number)
        if !number
            puts "Número inválido! Tente novamente."
        else
            @calculate += " - #{number.to_f}"
        end
        puts "*****************************************************************"
        puts "Sua conta até agora -> (#{@calculate})"
    end

    def multiplication(number)
        if !number
            puts "Número inválido! Tente novamente."
        else
            @calculate += " * #{number.to_f}"
        end
        puts "*****************************************************************"
        puts "Sua conta até agora -> (#{@calculate})"
    end

    def division(number)
        if !number
            puts "Número inválido! Tente novamente."
        elsif number == "0"
            puts "Não é possível dividir por zero! Tente novamente."
        else
            @calculate += " / (#{number.to_f})"
        end
        puts "*****************************************************************"
        puts "Sua conta até agora -> (#{@calculate})"
    end

    def equal
        puts "*****************************************************************"
        print "O resultado para (#{@calculate}) é -> "
        puts eval @calculate
    end
end