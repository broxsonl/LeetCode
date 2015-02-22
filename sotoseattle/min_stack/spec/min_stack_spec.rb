require 'spec_helper'

describe 'Stack' do
  let(:stk) { MinStack.new }

  it { stk.top.must_be_nil }

  describe 'one element stack' do
    describe 'adding one element to an empty stack' do
      before { stk.push(3) }
      it { stk.size.must_equal 1 }
      it { stk.top.must_equal 3 }
      it { stk.getMin.must_equal 3 }
      it { stk.pop.must_equal 3 }
    end
  end

  describe 'two element stack' do
    describe 'adding two element to an empty stack, ASC' do
      before { stk.push(2); stk.push(7) }
      it { stk.size.must_equal 2 }
      it { stk.top.must_equal 7 }
      it { stk.getMin.must_equal 2 }
      it { stk.pop.must_equal 7 }
    end

    describe 'adding two element to an empty stack, DESC' do
      before { stk.push(7).push(1) }
      it { stk.size.must_equal 2 }
      it { stk.top.must_equal 1 }
      it { stk.getMin.must_equal 1 }
      it { stk.pop.must_equal 1 }
    end
  end

  describe 'three element stack ASC' do
    before { stk.push(1).push(2).push(3) }
    it { stk.size.must_equal 3 }
    it { stk.top.must_equal 3 }
    it { stk.getMin.must_equal 1 }

    it 'works for repetitive popping' do
      stk.pop.must_equal 3
      stk.getMin.must_equal 1
      stk.pop.must_equal 2
      stk.getMin.must_equal 1
      stk.pop.must_equal 1
      stk.getMin.must_equal nil
    end
  end

  describe 'three element stack DESC' do
    before { stk.push(3).push(2).push(1) }
    it { stk.size.must_equal 3 }
    it { stk.top.must_equal 1 }
    it { stk.getMin.must_equal 1 }

    it 'works for repetitive popping' do
      stk.pop.must_equal 1
      stk.getMin.must_equal 2
      stk.pop.must_equal 2
      stk.getMin.must_equal 3
      stk.pop.must_equal 3
      stk.getMin.must_equal nil
    end
  end

  describe 'three element stack MIXED' do
    before { stk.push(1).push(3).push(2).push(0) }
    it 'works for repetitive popping' do
      stk.getMin.must_equal 0
      stk.pop.must_equal 0
      stk.getMin.must_equal 1
      stk.pop.must_equal 2
      stk.getMin.must_equal 1
      stk.pop.must_equal 3
      stk.getMin.must_equal 1
    end
  end
end
