require_relative 'main61.rb'
RSpec.describe 'SuperMain' do
  it 'should do ok if eps is correct' do
    expect(Laba61(0.0001)).to eq 0.9900990099009898
    expect(Laba61(0.00001)).to eq 0.9968454258675077
  end
  it 'should not do ok if eps is incorrect' do
    pr = Random.new
    expect(Laba61(pr.rand(100))).to eq 'Неверно введённое значение точности'
  end
end
