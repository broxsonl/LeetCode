module LeetCode
  class Palindrome
    def initialize(number)
      fail ArgumentError unless number.is_a? Integer
      @number = number
    end

    def palindrome?
      total_digits = num_digits
      offset = 0

      until offset == total_digits / 2
        return false unless digit_at(total_digits - offset) == digit_at(1 + offset)
        offset += 1
      end

      true
    end

    def digit_at(position)
      (@number.abs / (10 ** (position - 1))) % 10
    end

    private

    def num_digits
      total_digits = 0
      number = @number.abs

      until number == 0
        number /= 10
        total_digits += 1
      end

      total_digits
    end
  end
end
