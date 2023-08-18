# Handles data input.
class Input
    # Validates data entry for the options.
    # If true returns a integer else returns false.
    def input_option(option)
        option.to_i.to_s != option || option.to_i < 0 ? false : option.to_i
    end 

    # Validates data entry for the options.
    # If true returns a float else returns false.
    def input_float(number)
        begin
            isValid = !!Float(number)
        rescue
            isValid = false
        end

        isValid ? number.to_f : false
    end       
end
