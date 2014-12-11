module LeetCode
  # Implementation of Pascal's Triangle using recursion and caching
  class PascalsTriangle
    def initialize
      @triangle = []
    end

    def generate(num)
      triangle = Array.new(num) { [] }
      triangle.map.with_index { |_level, index| calculate_level(index + 1) }
    end

    def calculate_level(level)
      return [1] if level == 1

      cache = @triangle[level - 1]
      return cache if cache

      current = Array.new(level)
      previous = calculate_level(level - 1)

      @triangle[level - 1] = fill_in_level(current, previous)
    end

    private

    def fill_in_level(current, prev)
      current[0] = prev[0]
      current[-1] = prev[-1]
      1.upto(current.size - 2) { |i| current[i] = prev[i - 1] + prev[i] }
      current
    end
  end
end
