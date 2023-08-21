require 'rspec'
require_relative '../src/calc'

describe 'Class Calc -> calculate_string' do
    before(:each) do
        @calc = Calc.new
    end

    it 'should join the array calculate into a string' do
        @calc.calculate = ['10', ' + 20', ' + 30']
        expect(@calc.calculate_string).to eq '10 + 20 + 30'
    end
end

describe 'Class Calc -> addition' do
    before(:each) do
        @calc = Calc.new
    end

    it 'should update the var calculate for float' do
        @calc.addition 5.0
        expect(@calc.calculate).to eq [' + 5.0']
    end

    it 'should update the var calculate for negative float' do
        @calc.addition -5.0
        expect(@calc.calculate).to eq [' + -5.0']
    end

    it 'should print error message for false' do
        expect { @calc.addition false }.to output(
            "*****************************************************************\n" +
            "Número inválido! Tente novamente.\n"
        ).to_stdout
    end
end

describe 'Class Calc -> subtraction' do
    before :each do
        @calc = Calc.new
    end

    it 'should update the var calculate for float' do
        @calc.subtraction 5.0
        expect(@calc.calculate).to eq [' - 5.0']
    end

    it 'should update the var calculate for negative float' do
        @calc.subtraction -5.0
        expect(@calc.calculate).to eq [' - -5.0']
    end

    it 'should print error message for false' do
        expect { @calc.subtraction false }.to output(
            "*****************************************************************\n" +
            "Número inválido! Tente novamente.\n"
        ).to_stdout
    end
end

describe 'Class Calc -> multiplication' do
    before :each do
        @calc = Calc.new
    end

    it 'should update the var calculate for float' do
        @calc.multiplication 5.0
        expect(@calc.calculate).to eq [' * 5.0']
    end

    it 'should update the var calculate for negative float' do
        @calc.multiplication -5.0
        expect(@calc.calculate).to eq [' * -5.0']
    end

    it 'should print error message for false' do
        expect { @calc.multiplication false }.to output(
            "*****************************************************************\n" +
            "Número inválido! Tente novamente.\n"
        ).to_stdout
    end
end

describe 'Class Calc -> division' do
    before :each do
        @calc = Calc.new
    end

    it 'should update the var calculate for float' do
        @calc.division 5.0
        expect(@calc.calculate).to eq [' / 5.0']
    end

    it 'should update the var calculate for negative float' do
        @calc.division -5.0
        expect(@calc.calculate).to eq [' / -5.0']
    end

    it 'should print error message for false' do
        expect { @calc.division false }.to output(
            "*****************************************************************\n" +
            "Número inválido! Tente novamente.\n"
        ).to_stdout
    end

    it 'should print error message for division by zero' do
        expect { @calc.division 0.0 }.to output(
            "Não é possível dividir por zero! Tente novamente.\n"
        ).to_stdout
    end
end

describe 'Class Calc -> delete_last' do
    before :each do
        @calc = Calc.new
    end

    it 'should delete the last element of the calculate array if it is not empty and the parameter is equal to 1' do
        @calc.calculate = ['1.0', ' + 2.0', ' + 3.0' ]
        @calc.delete_last 1
        expect(@calc.calculate).to eq ['1.0', ' + 2.0']
    end
    it 'should print message for delete canceled if the parameter is equal to 0' do
        expect { @calc.delete_last 0 }.to output(
            "Nada foi apagado!\n"
        ).to_stdout
    end

    it 'should print error message if array calculate is empty and the parameter is equal to 1' do
        @calc.calculate = []
        expect { @calc.delete_last 1 }.to output(
            "Não há nada para apagar!\n"
        ).to_stdout
    end

    it 'should print error message if the parameter is equal to false' do
        expect { @calc.delete_last false }.to output(
            "*****************************************************************\n" +
            "Opção inválida! Tente novamente.\n"
        ).to_stdout
    end

    it 'should print error message if the parameter > 2' do
        expect { @calc.delete_last 3 }.to output(
            "*****************************************************************\n" +
            "Opção inválida! Tente novamente.\n"
        ).to_stdout
    end
end

describe 'Class Calc -> equal' do
    before :each do
        @calc = Calc.new
    end

    it 'should print the correct result for the calculation' do
        @calc.start 1.0
        @calc.addition 5.0
        @calc.subtraction 3.0
        @calc.delete_last 1
        @calc.multiplication 4.0
        @calc.division 2.0
        result = "11.0"
        expect { @calc.equal }.to output(
            "*****************************************************************\n" +
            "O resultado para (#{ @calc.calculate_string }) é -> " + 
            result + 
            "\n"
        ).to_stdout
    end

    it 'should print the correct result for a calculation with signed numbers' do
        @calc.start +1.0
        @calc.addition -5.0
        @calc.subtraction +3.0
        @calc.delete_last 1
        @calc.multiplication -4.0
        @calc.division -2.0
        result = '-9.0'
        expect { @calc.equal }.to output(
            "*****************************************************************\n" +
            "O resultado para (#{ @calc.calculate_string }) é -> " + 
            result + 
            "\n"
        ).to_stdout
    end
end
