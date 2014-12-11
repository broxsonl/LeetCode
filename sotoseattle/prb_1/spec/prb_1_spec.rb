require './spec/spec_helper'

describe 'Tree' do
  describe 'Basics' do
    let(:n) { Tree.new(34) }

    it 'at the start has nothing but a value it holds' do
      n.value.must_equal 34
      n.right.must_be_nil
      n.left.must_be_nil
    end

    it 'can be linked to other Trees' do
      m, o = Tree.new(10), Tree.new(12)
      n.left, n.right = m, o
      n.left.must_equal m
      n.right.must_equal o
    end
  end

  describe '#max_depth' do
    it { Tree.new(34).max_depth.must_equal 1 }

    it 'for two linked nodes' do
      n = Tree.new(34)
      n.left = Tree.new(10)
      n.max_depth.must_equal 2
    end

    it 'for 5 linked nodes' do
      n = Tree.new(34)
      n.left = Tree.new(10)
      n.left.right = Tree.new(2)
      n.left.right.right = Tree.new(7)
      n.left.left = Tree.new(5)

      n.max_depth.must_equal 4
    end
  end
end
