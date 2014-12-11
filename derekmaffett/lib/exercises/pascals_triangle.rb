module LeetCode
  class PascalsTriangle
    def initialize
      @triangle = []
    end

    def generate(num)
      triangle = Array.new(num) { [] }
      triangle.map.with_index { |level, index| calculate_level(index + 1) }
    end

    def calculate_level(level)
      return [1] if level == 1
      cache = @triangle[level - 1]
      return cache if cache

      current = Array.new(level)
      previous = calculate_level(level - 1)
      current[0] = previous.first
      current[level - 1] = previous.last

      1.upto(level - 2) { |i| current[i] = previous[i - 1] + previous[i] }

      @triangle[level - 1] = current
    end
  end
end


