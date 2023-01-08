require_relative 'main51.rb'
require 'minitest/autorun'
class Test5 < Minitest::Unit::TestCase
  def test_return_value_1
    assert_equal Laba51(5, 6, 7), 3.1376586102847015
  end

  def test_return_value_2
    assert_equal Laba51(4, 0, 2), 0.08342454924377148
  end

  def test_return_value_3
    assert_equal Laba51(0, 0, 0), 3.0
  end
end
