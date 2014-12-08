module LeetCode
  # Mathematical reversal of an integer (e.g. without using string conversion)
  module RevInt
    def self.reverse(num)
      fail ArgumentError unless num.is_a? Integer

      reversed_int = 0
      positive = num == (abs_num = num.abs)

      while abs_num != 0
        last_digit = abs_num % 10           # last_digit =>   3   2   1
        abs_num /= 10                       # abs_num =>      12  1   0
        reversed_int *= 10                  # reversed_int => 0   30  320
        reversed_int += last_digit          # reversed_int => 3   32  321
      end

      positive ? reversed_int : -reversed_int
    end
  end
end
