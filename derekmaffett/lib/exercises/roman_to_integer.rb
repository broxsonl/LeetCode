module LeetCode
  # Provides a Roman Numeral conversion to integer format. Note that while
  # this solution is simple and fast, it does not understand what a valid
  # roman numeral looks like. Invalid numerals will give invalid conversions.
  class RomanNumeral
    CONVERSIONS = {
      'I' => 1,
      'V' => 5,
      'X' => 10,
      'L' => 50,
      'C' => 100,
      'D' => 500,
      'M' => 1000
    }
    def initialize(numeral)
      @numeral = numeral
    end

    def to_i
      prev = 1.0 / 0 # Infinity
      @numeral.chars.reduce(0) do |accum, elem|
        result = accum + CONVERSIONS[elem]
        result -= 2 * prev if prev < CONVERSIONS[elem]
        prev = CONVERSIONS[elem]
        result
      end
    end
  end
end
