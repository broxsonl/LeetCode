RSpec.describe LeetCode::StringPalindrome do
  describe '#palindrome?' do
    context 'with an empty string' do
      before(:each) { @palindrome = LeetCode::StringPalindrome.new('') }

      it 'should return true' do
        expect(@palindrome.palindrome?).to eq true
      end
    end

    context 'with a single character' do
      before(:each) { @palindrome = LeetCode::StringPalindrome.new('a') }

      it 'should return true' do
        expect(@palindrome.palindrome?).to eq true
      end
    end

    context 'with a simple word input' do
      before(:each) do
        @even_true = LeetCode::StringPalindrome.new('abaaba')
        @even_false = LeetCode::StringPalindrome.new('cars')
        @odd_true = LeetCode::StringPalindrome.new('catatac')
        @odd_false = LeetCode::StringPalindrome.new('falef')
      end

      it 'should return true for an even lettered palindrome' do
        expect(@even_true.palindrome?).to eq true
      end

      it 'should return false for an even lettered non-palindrome' do
        expect(@even_false.palindrome?).to eq false
      end

      it 'should return true for an odd lettered palindrome' do
        expect(@odd_true.palindrome?).to eq true
      end

      it 'should return false for an odd lettered non-palindrome' do
        expect(@odd_false.palindrome?).to eq false
      end
    end

    context 'with a set of words including spaces and special characters' do
      before(:each) do
        @palindrome = LeetCode::StringPalindrome.new(
          'A man, a plan, a canal: Panama'
        )
        @not_palindrome = LeetCode::StringPalindrome.new('race a car')
      end

      it 'should ignore all but alphabetic characters for a palindrome' do
        expect(@palindrome.palindrome?).to eq true
      end

      it 'should ignore all but alphabetic characters for a non-palindrome' do
        expect(@not_palindrome.palindrome?).to eq false
      end
    end
  end
end
