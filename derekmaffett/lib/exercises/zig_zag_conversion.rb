module LeetCode
  # Implements the zig-zag conversion where the characters of a word are
  # deposited into different rows in an increasing/decreasing pattern (zig-zag)
  class ZigZag
    def initialize(string)
      @string = string
    end

    def convert(rows)
      unless rows.is_a?(Integer) && rows > 0
        fail ArgumentError, 'Rows must be a positive integer'
      end

      return @string if rows == 1

      sort_to_rows(rows).join
    end

    private

    def sort_to_rows(rows)
      sequence = Sequence.new(rows)
      zig_zag_rows = Array.new(rows, '')
      @string.each_char { |char| zig_zag_rows[sequence.next - 1] += char }
      zig_zag_rows
    end

    # Supplies the zig-zag sequence depending on the rows given
    class Sequence
      def initialize(rows)
        @rows = rows
        @next_row = 1
        @increasing = true
      end

      def next
        row = @next_row
        calculate_next_row
        row
      end

      private

      def calculate_next_row
        @increasing ? @next_row += 1 : @next_row -= 1
        @increasing = !@increasing if @next_row == 1 || @next_row == @rows
      end
    end
  end
end
