module LeetCode
  class StringConverter
    def initialize(string)
      @string = string
    end

    def to_i
      string = strip_non_digits_and_decimals(@string)
      result = string.chars.reduce(0) { |num, c| num * 10 + int_by_ascii(c) }
      negative?(@string) ? -result : result
    end

    private

    def int_by_ascii(char)
      char.ord - '0'.ord
    end

    def negative?(string)
      neg = false
      string.each_char { |c| c == '-' ? (neg = !neg) : (return neg) }
    end

    def strip_non_digits_and_decimals(string)
      string.gsub(/\D|(?<=\.).*/, '')
    end
  end
end
