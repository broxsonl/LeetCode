RSpec.describe LeetCode::Stack do
  describe '#push' do
    context 'pushing to an empty stack' do
      before(:each) do
        @stack = LeetCode::Stack.new
        @stack.push('Hi')
      end

      it 'should increase the stack size' do
        expect(@stack.size).to eq 1
      end

      it 'should be the top element' do
        expect(@stack.top).to eq 'Hi'
      end
    end

    context 'pushing to a stack with items' do
      before(:each) do
        @stack = LeetCode::Stack.new(1, 2, 3)
        @stack.push('New thing')
      end

      it 'should have the appropriate size' do
        expect(@stack.size).to eq 4
      end

      it 'should have the top element as the last pushed item' do
        expect(@stack.top).to eq 'New thing'
      end
    end
  end

  describe '#pop' do
    context 'when the stack is empty' do
      before(:each) do
        @stack = LeetCode::Stack.new
        @response = @stack.pop
      end

      it 'should return nil' do
        expect(@response).to be_nil
      end

      it 'should still have a size of zero' do
        expect(@stack.size).to eq 0
      end
    end

    context 'when the stack has a single element' do
      before(:each) do
        @stack = LeetCode::Stack.new(1)
        @response = @stack.pop
      end

      it 'should have a size of zero' do
        expect(@stack.size).to eq 0
      end

      it 'should pop the value' do
        expect(@response).to eq 1
      end
    end

    context 'when the stack has elements' do
      before(:each) do
        @stack = LeetCode::Stack.new(1, 2, 3, 4)
        @top = @stack.top
        @response = @stack.pop
      end

      it 'should have a reduced size' do
        expect(@stack.size).to eq 3
      end

      it 'should return the topmost item' do
        expect(@response).to eq @top
      end
    end
  end

  describe '#top' do
    context 'when the stack is empty' do
      before(:each) do
        @stack = LeetCode::Stack.new
      end

      it 'should return nil' do
        expect(@stack.top).to be_nil
      end
    end

    context 'when the stack has elements' do
      before(:each) do
        @stack = LeetCode::Stack.new(1, 2, 3)
      end

      it 'should return the top element' do
        expect(@stack.top).to eq 3
      end
    end
  end

  describe '#get_min' do

  end
end
