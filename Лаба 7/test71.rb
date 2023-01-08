require_relative 'main71.rb'
RSpec.describe "Supermain" do
    it 'should check that file F is opened' do
        laba71("Hi, Bro!")
        str_1 = File.new('F.txt', 'r').read
        expect("Hi, Bro!").to eq str_1
    end
    it 'should check that file G is opened' do
        str_2 = File.new('G.txt', 'r').read
        expect("hi, bro!").to eq str_2
    end
end