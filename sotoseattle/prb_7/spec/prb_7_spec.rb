require 'spec_helper'

describe '#palindrome?' do
  it { palindrome?(1).must_equal true }
  it { palindrome?(11).must_equal true }
  it { palindrome?(111).must_equal true }
  it { palindrome?(121).must_equal true }
  it { palindrome?(108801).must_equal true }
  it { palindrome?(108901).must_equal false }
  it { palindrome?(1087801).must_equal true }
  it { palindrome?(1087802).must_equal false }
  it { palindrome?(1077801).must_equal false }
end
