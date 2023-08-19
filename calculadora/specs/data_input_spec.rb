require 'rspec'
require_relative '../src/data_input'

describe 'Class Input -> input_option' do 
    before :each do
        @input = Input.new
    end

    it 'should return 1 for input "1"' do
        expect(@input.input_option '1').to eq 1
    end
  
    it 'should return 0 for input "0"' do
        expect(@input.input_option '0').to eq 0
    end
    
    it 'should return false for negative numbers' do
        expect(@input.input_option '-1').to eq false
    end

    it 'should return false for letters' do
        expect(@input.input_option 'invalid').to eq false
    end

    it 'should return false for symbols' do
        expect(@input.input_option '/\<>[]~{}^').to eq false
    end

    it 'should return false for nil' do
        expect(@input.input_option '').to eq false
    end
end

describe 'Class Input -> input_float' do 
    before :each do
        @input = Input.new
    end

    it 'should return a float for string integer' do
        expect(@input.input_float '5').to eq 5.0
    end

    it 'should return a float for string float' do
        expect(@input.input_float '3.14').to eq 3.14
    end

    it 'should return a negative float for negative string number' do
        expect(@input.input_float '-5').to eq -5.0
    end
    
    it 'should return false for letters' do
        expect(@input.input_float 'invalid').to eq false
    end
    
    it 'should return false for symbols' do
        expect(@input.input_float '/\<>[]~{}^').to eq false
    end

    it 'should return false for nil' do
        expect(@input.input_float '').to eq false
    end
end
