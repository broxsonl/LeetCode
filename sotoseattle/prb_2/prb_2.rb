# The count-and-say sequence is the sequence of integers beginning as follows:
# 1, 11, 21, 1211, 111221, ...

# 1 is read off as "one 1" or 11.
# 11 is read off as "two 1s" or 21.
# 21 is read off as "one 2, then one 1" or 1211.
# Given an integer n, generate the nth sequence.

# Note: The sequence of integers will be represented as a string.

module CountSay
  def cycle(turns)
    string_of_digits = '1'
    turns.times { string_of_digits = laundromat(string_of_digits) }
    string_of_digits
  end

  private

  def laundromat(string)
    string.chars
          .chunk{|n| n}
          .map{|n, sequence| [sequence.count, n]}
          .join
  end
end
