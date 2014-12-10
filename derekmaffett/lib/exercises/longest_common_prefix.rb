module LeetCode
  class StringComparator
    def initialize(*strings)
      @strings = strings
    end

    def common_prefix
      loop do |i|
        char = @strings.first[i]
        break unless @strings.all? { |string| string[i] == char }
        prefix << char
      end
      prefix
    end
  end
end
