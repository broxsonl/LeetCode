require 'spec_helper'

describe 'CountSay' do
  let(:cs) { CountSay.new }

  it { CountSay.new.number.must_be_nil }

  it { CountSay.new.cycle(0).must_equal '1' }

  describe '#to_s' do
    it { cs.cycle(1).must_equal '11' }

    it { cs.cycle(2).must_equal '21' }

    it { cs.cycle(3).must_equal '1211' }

    it { cs.cycle(4).must_equal '111221' }
  end

  describe '#laundromat' do
    it { cs.send(:laundromat, 1).must_equal '11' }

    it { cs.send(:laundromat, 123).must_equal '111213' }
  end
end
