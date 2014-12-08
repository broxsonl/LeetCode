RSpec.describe LeetCode::MinStack do
  describe '#push' do
    context 'pushing to an empty stack' do
      before(:each) do
        @stack = LeetCode::MinStack.new
        @stack.push 10
      end

      it 'should increase the stack size' do
        expect(@stack.size).to eq 1
      end

      it 'should be the top element' do
        expect(@stack.top).to eq 10
      end
    end

    context 'pushing to a stack with items' do
      before(:each) do
        @stack = LeetCode::MinStack.new(1, 2, 3)
        @stack.push(4)
      end

      it 'should have the appropriate size' do
        expect(@stack.size).to eq 4
      end

      it 'should have the top element as the last pushed item' do
        expect(@stack.top).to eq 4
      end
    end

    context 'pushing different types of data' do
      before(:each) do
        @stack = LeetCode::MinStack.new
      end

      it 'should reject a string' do
        expect { @stack.push('Hi') }.to raise_error ArgumentError
      end

      it 'should accept floats' do
        expect { @stack.push(12.74) }.not_to raise_error
      end
    end
  end

  describe '#pop' do
    context 'when the stack is empty' do
      before(:each) do
        @stack = LeetCode::MinStack.new
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
        @stack = LeetCode::MinStack.new(1)
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
        @stack = LeetCode::MinStack.new(1, 2, 3, 4)
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
        @stack = LeetCode::MinStack.new
      end

      it 'should return nil' do
        expect(@stack.top).to be_nil
      end
    end

    context 'when the stack has elements' do
      before(:each) do
        @stack = LeetCode::MinStack.new(1, 2, 3)
      end

      it 'should return the top element' do
        expect(@stack.top).to eq 3
      end
    end
  end

  describe '#find_min' do
    context 'with an empty stack' do
      before(:each) do
        @stack = LeetCode::MinStack.new
      end

      it 'should return nil' do
        expect(@stack.find_min).to be_nil
      end
    end

    context 'with items in the stack' do
      before(:each) do
        @stack = LeetCode::MinStack.new(10, 7, 7, 82, 4)
      end

      it 'should return the min value' do
        expect(@stack.find_min).to eq 4
      end

      it 'should return to earlier mins when the stack is popped' do
        @stack.pop
        expect(@stack.find_min).to eq 7
        @stack.pop
        expect(@stack.find_min).to eq 7
        @stack.pop
        expect(@stack.find_min).to eq 7
        @stack.pop
        expect(@stack.find_min).to eq 10
      end
    end
  end
end
