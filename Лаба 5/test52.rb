require_relative 'main52.rb'
RSpec.describe "Supermain" do
  it 'should return only odd numbers' do
    expect(Laba52(91)).to eq [3,0]
  end
  it 'should return only even numbers' do
    expect(Laba52(18)).to eq [0,2]
  end
  it 'should return an equal amount of even and odd numers' do
    expect(Laba52(17)).to eq [1,1]
  end
end