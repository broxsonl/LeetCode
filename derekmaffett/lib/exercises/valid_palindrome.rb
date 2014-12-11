module LeetCode
  # Handles palindrome determination for strings
  class StringPalindrome
    def initialize(string)
      @string = string
    end

    def palindrome?
      string = @string.gsub(/\W/, '').downcase
      (string.size / 2).times do |i|
        return false unless string[0 + i] == string[-1 - i]
      end

      true
    end
  end
end
