require 'rspec'
require_relative '../src/data_output'

describe 'Class Output' do
    before(:each) do
        @output = Output.new
    end

    it 'should update the variable message with the methods message.' do
        expect{@output.output_head}.to output(@output.message).to_stdout
        expect{@output.output_start}.to output(@output.message).to_stdout
        expect{@output.first_number}.to output(@output.message).to_stdout
        expect{@output.output_menu('10 + 10')}.to output(@output.message).to_stdout
        expect{@output.next_number}.to output(@output.message).to_stdout
        expect{@output.invalid_operation}.to output(@output.message).to_stdout
        expect{@output.invalid_option}.to output(@output.message).to_stdout
        expect{@output.invalid_number}.to output(@output.message).to_stdout
        expect{@output.division_zero}.to output(@output.message).to_stdout
        expect{@output.delete_confirme}.to output(@output.message).to_stdout
        expect{@output.delete_canceled}.to output(@output.message).to_stdout
        expect{@output.delete_error}.to output(@output.message).to_stdout
        expect{@output.message_result('10 + 10', '20')}.to output(@output.message).to_stdout
        expect{@output.output_exit}.to output(@output.message).to_stdout
    end
end