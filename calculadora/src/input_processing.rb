# Handles data input.
class Input
    # Validates data entry for the options.
    # If true returns a integer else returns "INVALID".
    def input_start(option)
        if option.to_i.to_s != option || option.to_i < 0
            "INVALID"
        else
            option.to_i
        end
    end 

    # Validates data entry for the options.
    # If true returns a float else returns false.
    def input_float(number)
        begin
            isValid = !!Float(number)
        rescue
            isValid = false
        end

        if !isValid
            puts "Número inválido! Tente novamente."
            false
        else
            number.to_f
        end
    end 
end
