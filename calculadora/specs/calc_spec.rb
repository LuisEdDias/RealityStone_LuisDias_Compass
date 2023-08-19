require 'rspec'
require_relative '../src/calc'

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
        expect { @calc.addition false }.to output(@calc.output.message).to_stdout
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
        expect { @calc.subtraction false }.to output(@calc.output.message).to_stdout
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
        expect { @calc.multiplication false }.to output(@calc.output.message).to_stdout
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
        expect { @calc.division false }.to output(@calc.output.message).to_stdout
    end

    it 'should print error message for division by zero' do
        expect { @calc.division 0.0 }.to output(@calc.output.message).to_stdout
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
        expect { @calc.delete_last 0 }.to output(@calc.output.message).to_stdout
    end

    it 'should print error message if array calculate is empty and the parameter is equal to 1' do
        @calc.calculate = []
        expect { @calc.delete_last 1 }.to output(@calc.output.message).to_stdout
    end

    it 'should print error message if the parameter is equal to false' do
        expect { @calc.delete_last false }.to output(@calc.output.message).to_stdout
    end

    it 'should print error message if the parameter > 2' do
        expect { @calc.delete_last 3 }.to output(@calc.output.message).to_stdout
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
        expect { @calc.equal }.to output(@calc.output.message).to_stdout
    end

    it 'should print the correct result for a calculation with signed numbers' do
        @calc.start +1.0
        @calc.addition -5.0
        @calc.subtraction +3.0
        @calc.delete_last 1
        @calc.multiplication -4.0
        @calc.division -2.0
        expect { @calc.equal }.to output(@calc.output.message).to_stdout
    end
end
