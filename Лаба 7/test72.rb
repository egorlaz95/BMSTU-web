require_relative 'main72.rb'
RSpec.describe do
    it 'should return true' do
      puts HouseB.ancestors.include? HouseA
      expect(HouseB.ancestors.include? HouseA).to eq true
    end
  end
