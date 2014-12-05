require 'spec_helper'

describe '#ato_i(str)' do
  it { ato_i('').must_equal 0 }
  it { ato_i('7').must_equal 7 }
  it { ato_i('-7').must_equal -7 }
  it { ato_i('     7').must_equal 7 }
  it { ato_i("     7    \t").must_equal 7 }
  it { ato_i(" -   7    \t").must_equal -7 }
  it { ato_i(" +   7    \n\t\s").must_equal 7 }
end
