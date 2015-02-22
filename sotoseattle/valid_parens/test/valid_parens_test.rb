require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../valid_parens.rb'


class Whatever < MiniTest::Test
  def test_nothing
    assert Code.new('').valid?
  end

  def test_proper_parens
    assert Code.new('{[()]}').valid?
    assert Code.new('()').valid?
    assert Code.new('[[[[{{([])}}]]]]').valid?
  end

  def test_wrong_parens
    refute Code.new(']').valid?
    refute Code.new('{)]}').valid?
    refute Code.new(')(').valid?
    refute Code.new('(ahjs(hsa{}hsha)').valid?
  end
end
