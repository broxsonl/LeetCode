RSpec.describe LeetCode::PascalsTriangle do
  describe '#generate' do
    context 'a triangle' do
      before(:each) { @triangle = LeetCode::PascalsTriangle.new }

      it 'should generate a triangle of one row' do
        expect(@triangle.generate(1)).to eq [[1]]
      end

      it 'should generate a triangle of two rows' do
        expect(@triangle.generate(2)).to eq [[1], [1, 1]]
      end

      it 'should generate a triangle of three rows' do
        expect(@triangle.generate(3)).to eq [[1], [1, 1], [1, 2, 1]]
      end

      it 'should generate larger triangles' do
        expect(@triangle.generate(5)).to eq(
          [
            [1],
            [1, 1],
            [1, 2, 1],
            [1, 3, 3, 1],
            [1, 4, 6, 4, 1]
          ]
        )
      end
    end
  end
end
