require_relative 'main62.rb'
RSpec.describe "SuperMain" do
    it 'should do ok if eps is correct' do
        expect(Laba62(0.0001)).to eq 0.9898989898989896
        expect(Laba62(0.00001)).to eq 0.9968253968253966
    end
    it 'should not do ok if eps is incorrect' do
        pr = Random.new
        expect(Laba62(pr.rand(100))).to eq 'Неверно введённое значение точности'
    end

end