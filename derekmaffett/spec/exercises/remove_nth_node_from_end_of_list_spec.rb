RSpec.describe LeetCode::SingleList do
  describe '#initialize' do
    context 'no arguments' do
      before(:each) { @list = LeetCode::SingleList.new }

      it 'should have no head' do
        expect(@list.head).to be_nil
      end

      it 'should have no tail' do
        expect(@list.tail).to be_nil
      end

      it 'should have a size of zero' do
        expect(@list.size).to eq 0
      end
    end

    context 'with arguments' do
      before(:each) { @list = LeetCode::SingleList.new(1, 4, 6, 2, 5) }

      it 'should hold the first argument as the head' do
        expect(@list.head).to eq 1
      end

      it 'should hold the final argument as the tail' do
        expect(@list.tail).to eq 5
      end

      it 'should have the correct size' do
        expect(@list.size).to eq 5
      end
    end
  end

  describe '#unshift' do
    context 'an empty list' do
      before(:each) do
        @list = LeetCode::SingleList.new
        @list.unshift(5)
      end

      it 'should add the value and assign head' do
        expect(@list.head).to eq 5
      end

      it 'should add the value and assign tail' do
        expect(@list.tail).to eq 5
      end

      it 'should have a size of one' do
        expect(@list.size).to eq 1
      end
    end

    context 'a list with one item' do
      before(:each) do
        @list = LeetCode::SingleList.new
        @list.unshift(4)
        @list.unshift(5)
      end

      it 'should keep the latest value as head' do
        expect(@list.head).to eq 5
      end

      it 'should keep the original tail' do
        expect(@list.tail).to eq 4
      end

      it 'should have a size of two' do
        expect(@list.size).to eq 2
      end
    end
  end

  describe '#shift' do
    context 'with an empty list' do
      before(:each) { @list = LeetCode::SingleList.new }

      it 'should return nil' do
        expect(@list.shift).to be_nil
      end
    end

    context 'with a list with one item' do
      before(:each) do
        @list = LeetCode::SingleList.new(1)
        @shifted_value = @list.shift
      end

      it 'should return the number' do
        expect(@shifted_value).to eq 1
      end

      it 'should have a nil head' do
        expect(@list.head).to be_nil
      end

      it 'should have a nil tail' do
        expect(@list.tail).to be_nil
      end

      it 'should have a size of zero' do
        expect(@list.size).to eq 0
      end
    end
  end

  describe '#remove_nth' do
    context 'removing the head' do
      before(:each) do
        @list = LeetCode::SingleList.new(1, 2, 3, 4, 5)
        @response = @list.remove_nth(1)
      end

      it 'should return the removed value' do
        expect(@response).to eq 1
      end

      it 'should reduce the size by one' do
        expect(@list.size).to eq 4
      end

      it 'should set a new head' do
        expect(@list.head).to eq 2
      end
    end

    context 'removing a middle value' do
      before(:each) do
        @list = LeetCode::SingleList.new(1, 2, 3, 4, 5)
        @response = @list.remove_nth(3)
      end

      it 'should return the removed value' do
        expect(@response).to eq 3
      end

      it 'should reduce the size by one' do
        expect(@list.size).to eq 4
      end

      it 'should keep the same head' do
        expect(@list.head).to eq 1
      end

      it 'should keep the same tail' do
        expect(@list.tail).to eq 5
      end
    end

    context 'removing the tail' do
      before(:each) do
        @list = LeetCode::SingleList.new(1, 2, 3, 4, 5)
        @response = @list.remove_nth(5)
      end

      it 'should return the removed value' do
        expect(@response).to eq 5
      end

      it 'should reduce the size by one' do
        expect(@list.size).to eq 4
      end

      it 'should set a new tail' do
        expect(@list.tail).to eq 4
      end
    end
  end

  describe '#remove_nth_from_end' do
    context 'an empty list' do
      before(:each) do
        @list = LeetCode::SingleList.new
        @response = @list.remove_nth_from_end(1)
      end

      it 'should return nil' do
        expect(@response).to be_nil
      end
    end

    context 'removing the head' do
      before(:each) do
        @list = LeetCode::SingleList.new(1, 3, 5, 7, 9)
        @response = @list.remove_nth_from_end(5)
      end

      it 'should remove the correct node' do
        expect(@response).to eq 1
      end
    end

    context 'removing a middle value' do
      before(:each) do
        @list = LeetCode::SingleList.new(1, 3, 5, 7, 9)
        @response = @list.remove_nth_from_end(2)
      end

      it 'should remove the correct node' do
        expect(@response).to eq 7
      end
    end

    context 'removing the tail' do
      before(:each) do
        @list = LeetCode::SingleList.new(1, 3, 5, 7, 9)
        @response = @list.remove_nth_from_end(1)
      end

      it 'should remove the correct node' do
        expect(@response).to eq 9
      end
    end
  end
end
