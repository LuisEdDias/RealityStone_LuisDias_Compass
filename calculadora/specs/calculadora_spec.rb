require 'rspec'
require_relative '../src/input_processing'
require_relative '../src/calc'


describe 'Class Input -> input_start' do
    it 'returns 1 for input "1"' do
        input = Input.new
        expect(input.input_start('1')).to eq(1)
    end
  
    it 'returns 0 for input "0"' do
        input = Input.new
        expect(input.input_start('0')).to eq(0)
    end
  
    it 'returns "INVALID" for letters' do
        input = Input.new
        expect(input.input_start('invalid')).to eq("INVALID")
    end

    it 'returns "INVALID" for symbols' do
        input = Input.new
        expect(input.input_start('/\<>[]~{}^')).to eq("INVALID")
    end

    it 'returns "INVALID" for nil' do
        input = Input.new
        expect(input.input_start('')).to eq("INVALID")
    end
end

describe 'Class Input -> input_float' do
    
    it 'returns a float for string integer' do
        input = Input.new
        expect(input.input_float('5')).to eq(5.0)
    end

    it 'returns a float for string float' do
        input = Input.new
        expect(input.input_float('3.14')).to eq(3.14)
    end
    
    it 'returns false for letters' do
        input = Input.new
        expect(input.input_float('invalid')).to eq(false)
    end
    
    it 'returns false for symbols' do
        input = Input.new
        expect(input.input_float('/\<>[]~{}^')).to eq(false)
    end

    it 'returns false for nil' do
        input = Input.new
        expect(input.input_float('')).to eq(false)
    end
end
