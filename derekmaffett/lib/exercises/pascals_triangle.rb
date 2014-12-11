module LeetCode
  class PascalsTriangle
    # def initialize(num)
    #   @triangle = generate(num)
    # end

    def generate(num)
      triangle = Array.new(num) { [] }
      triangle.map.with_index { |level, index| calculate_level(index + 1) }
    end

    def calculate_level(level)
      return [1] if level == 1

      current_level = Array.new(level)
      previous_level = calculate_level(level - 1)
      current_level[0] = previous_level.first
      current_level[level - 1] = previous_level.last

      1.upto(level - 2) do |i|
        current_level[i] = previous_level[i - 1] + previous_level[i]
      end

      current_level
    end
  end
end


