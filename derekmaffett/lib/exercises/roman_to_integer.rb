module LeetCode
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
      previous_value = 1.0 / 0         # Infinity
      @numeral.chars.reduce(0) { |a, e|
        if previous_value < CONVERSIONS[e]
          a = a + CONVERSIONS[e] - (2 * previous_value)
        else
          a = a + CONVERSIONS[e]
        end
        previous_value = CONVERSIONS[e]
        a
      }
    end
  end
end
