RSpec.describe LeetCode::CountSay do
  describe '#count_and_say' do
    context 'for the first number' do
      before(:each) do
        @result = LeetCode::CountSay.count_and_say(1)
      end

      it 'should return 1' do
        expect(@result).to eq '1'
      end
    end

    context 'for the second number in the sequence' do
      before(:each) do
        @result = LeetCode::CountSay.count_and_say(2)
      end

      it 'should return 11' do
        expect(@result).to eq '11'
      end
    end

    context 'for the fifth number in the sequence' do
      before(:each) do
        @result = LeetCode::CountSay.count_and_say(5)
      end

      it 'should return 111221' do
        expect(@result).to eq '111221'
      end
    end
  end
end
