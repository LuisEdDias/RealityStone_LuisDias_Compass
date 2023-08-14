require 'cpf_cnpj'

#Método
def cpf_validator(cpf)
    if CPF.valid?(cpf)
        puts "CPF válido!"
    else
        puts "CPF invalido!"
    end
end

puts "*****************************************************************"
puts "---------------------------Validar CPF---------------------------"
puts "*****************************************************************"
puts "Digite um CPF para ser validado:"
cpf = gets.chomp

#Chama o método passando os parâmetros
puts "*****************************************************************"
cpf_validator(cpf)
puts "*****************************************************************"
