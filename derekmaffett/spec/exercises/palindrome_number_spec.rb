RSpec.describe LeetCode::Palindrome do
  describe '#palindrome?' do
    context 'single digits' do
      before(:each) do
        @positive = LeetCode::Palindrome.new(1)
        @negative = LeetCode::Palindrome.new(-1)
      end

      it 'should return true for single digit positive integers' do
        expect(@positive.palindrome?).to eq true
      end

      it 'should return true for single digit positive integers' do
        expect(@negative.palindrome?).to eq true
      end
    end

    context 'odd number of multiple digits' do
      before(:each) do
        @positive_true = LeetCode::Palindrome.new(53_435)
        @negative_true = LeetCode::Palindrome.new(-53_435)
        @positive_false = LeetCode::Palindrome.new(88_923)
        @negative_false = LeetCode::Palindrome.new(-88_923)
      end

      it 'should return true for multi-digit palindromes' do
        expect(@positive_true.palindrome?).to eq true
      end

      it 'should return false for multi-digit non-palindromes' do
        expect(@positive_false.palindrome?).to eq false
      end

      it 'should return true for multi-digit negative palindromes' do
        expect(@negative_true.palindrome?).to eq true
      end

      it 'should return false for multi-digit negative non-palindromes' do
        expect(@negative_false.palindrome?).to eq false
      end
    end

    context 'even number of multiple digits' do
      before(:each) do
        @positive_true = LeetCode::Palindrome.new(5335)
        @negative_true = LeetCode::Palindrome.new(-5335)
        @positive_false = LeetCode::Palindrome.new(8823)
        @negative_false = LeetCode::Palindrome.new(-8823)
      end

      it 'should return true for multi-digit palindromes' do
        expect(@positive_true.palindrome?).to eq true
      end

      it 'should return false for multi-digit non-palindromes' do
        expect(@positive_false.palindrome?).to eq false
      end

      it 'should return true for multi-digit negative palindromes' do
        expect(@negative_true.palindrome?).to eq true
      end

      it 'should return false for multi-digit negative non-palindromes' do
        expect(@negative_false.palindrome?).to eq false
      end
    end
  end
end
