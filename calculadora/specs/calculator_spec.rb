require 'rspec'
require_relative '../src/data_output'
require_relative '../src/data_input'
require_relative '../src/calc'

describe 'Class Input -> input_start' do
   
    before(:each) do
        @input = Input.new
    end

    it 'returns 1 for input "1"' do
        expect(@input.input_option('1')).to eq(1)
    end
  
    it 'returns 0 for input "0"' do
        expect(@input.input_option('0')).to eq(0)
    end
    
    it 'returns false for negative numbers' do
        expect(@input.input_option('-1')).to eq(false)
    end

    it 'returns false for letters' do
        expect(@input.input_option('invalid')).to eq(false)
    end

    it 'returns false for symbols' do
        expect(@input.input_option('/\<>[]~{}^')).to eq(false)
    end

    it 'returns false for nil' do
        expect(@input.input_option('')).to eq(false)
    end
end

describe 'Class Input -> input_float' do
   
    before(:each) do
        @input = Input.new
    end

    it 'returns a float for string integer' do
        expect(@input.input_float('5')).to eq(5.0)
    end

    it 'returns a float for string float' do
        expect(@input.input_float('3.14')).to eq(3.14)
    end

    it 'returns a negative float for negative string number' do
        expect(@input.input_float('-5')).to eq(-5.0)
    end
    
    it 'returns false for letters' do
        expect(@input.input_float('invalid')).to eq(false)
    end
    
    it 'returns false for symbols' do
        expect(@input.input_float('/\<>[]~{}^')).to eq(false)
    end

    it 'returns false for nil' do
        expect(@input.input_float('')).to eq(false)
    end
end

describe 'Class Calc -> addition' do

    before(:each) do
        @calc = Calc.new('1.0')
    end

    it 'updates the var calculate for float' do
        @calc.addition(5.0)
        expect(@calc.calculate).to eq('1.0 + 5.0')
    end

    it 'updates the var calculate for negative float' do
        @calc.addition(-5.0)
        expect(@calc.calculate).to eq('1.0 + -5.0')
    end

    it 'does not update the var calculate for false' do
        @calc.addition(false)
        expect(@calc.calculate).to eq('1.0')
    end
end

describe 'Class Calc -> subtraction' do

    before(:each) do
        @calc = Calc.new('1.0')
    end

    it 'updates the var calculate for float' do
        @calc.subtraction(5.0)
        expect(@calc.calculate).to eq('1.0 - 5.0')
    end

    it 'updates the var calculate for negative float' do
        @calc.subtraction(-5.0)
        expect(@calc.calculate).to eq('1.0 - -5.0')
    end

    it 'does not update the var calculate for false' do
        @calc.subtraction(false)
        expect(@calc.calculate).to eq('1.0')
    end
end

describe 'Class Calc -> multiplication' do

    before(:each) do
        @calc = Calc.new('1.0')
    end

    it 'updates the var calculate for float' do
        @calc.multiplication(5.0)
        expect(@calc.calculate).to eq('1.0 * 5.0')
    end

    it 'updates the var calculate for negative float' do
        @calc.multiplication(-5.0)
        expect(@calc.calculate).to eq('1.0 * -5.0')
    end

    it 'does not update the var calculate for false' do
        @calc.multiplication(false)
        expect(@calc.calculate).to eq('1.0')
    end
end

describe 'Class Calc -> division' do

    before(:each) do
        @calc = Calc.new('1.0')
    end

    it 'updates the var calculate for float' do
        @calc.division(5.0)
        expect(@calc.calculate).to eq('1.0 / 5.0')
    end

    it 'updates the var calculate for negative float' do
        @calc.division(-5.0)
        expect(@calc.calculate).to eq('1.0 / -5.0')
    end

    it 'does not update the var calculate for false' do
        @calc.division(false)
        expect(@calc.calculate).to eq('1.0')
    end

    it 'does not update the calculation when dividing by zero' do
        expect {@calc.division(0.0)}.to output("Não é possível dividir por zero! Tente novamente.\n").to_stdout
    end
end

describe 'Class Calc -> equal' do
    it 'prints the correct result for addition' do
        calc = Calc.new('1.0')
        calc.addition(5.0)
        calc.subtraction(3.0)
        calc.multiplication(2.0)
        calc.division(2.0)
        expect {calc.equal}.to output("O resultado para (1.0 + 5.0 - 3.0 * 2.0 / 2.0) é -> 3.0\n").to_stdout
    end
end
