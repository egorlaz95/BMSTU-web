=begin
require_relative 'main53.rb'
require 'minitest/autorun'
class Test5 < Minitest::Unit::TestCase
  def setup; end

  def test_return_value
    o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
    st = (0...10).map { o[rand(o.length)] }.join('ba ')
    ar = Laba53(st)[1]
    puts st
    assert_equal Laba53(st), [st, ar]
  end
end
=end

require_relative 'main53.rb'
RSpec.describe "Supermain" do
  it 'should return the start strings' do
    o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
    str = (0...10).map { o[rand(o.length)] }.join('ba ')
    expect(Laba53(str)[0]).to eq str
  end
  it 'should return the changed strings' do
    o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
    str = (0...10).map { o[rand(o.length)] }.join('ba ')
    cat = str.split
    mar,car = [],[]
    car.push(cat.join(' '))
    mar = car[0].split
    (0...10).each do |i|
      mar[i] = mar[i].reverse if i.even?
    end
    expect(Laba53(car)[1].join(' ')).to eq mar.join(' ')
  end
end