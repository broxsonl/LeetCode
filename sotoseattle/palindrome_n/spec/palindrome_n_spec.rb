require 'spec_helper'

describe '#palindrome?' do
  it { palindrome?(1).must_equal true }
  it { palindrome?(11).must_equal true }
  it { palindrome?(111).must_equal true }
  it { palindrome?(121).must_equal true }
  it { palindrome?(108_801).must_equal true }
  it { palindrome?(108_901).must_equal false }
  it { palindrome?(1_087_801).must_equal true }
  it { palindrome?(1_087_802).must_equal false }
  it { palindrome?(1_077_801).must_equal false }
end
