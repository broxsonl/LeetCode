module LeetCode
  # Compares an array of strings, here finding the longest common prefix
  class StringComparator
    def initialize(*strings)
      @strings = strings
    end

    def common_prefix
      prefix = ''

      @strings.first.chars.each_with_index do |char, i|
        return prefix unless @strings.all? { |string| string[i] == char }
        prefix << char
      end

      prefix
    end
  end
end
