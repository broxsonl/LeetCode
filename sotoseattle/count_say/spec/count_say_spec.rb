require 'spec_helper'

describe 'CountSay' do
  include CountSay

  it { cycle(0).must_equal '1' }

  it { cycle(1).must_equal '11' }

  it { cycle(2).must_equal '21' }

  it { cycle(3).must_equal '1211' }

  it { cycle(4).must_equal '111221' }
end
