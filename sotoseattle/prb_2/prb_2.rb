# The count-and-say sequence is the sequence of integers beginning as follows:
# 1, 11, 21, 1211, 111221, ...

# 1 is read off as "one 1" or 11.
# 11 is read off as "two 1s" or 21.
# 21 is read off as "one 2, then one 1" or 1211.
# Given an integer n, generate the nth sequence.

# Note: The sequence of integers will be represented as a string.

CountSay = Struct.new(:number) do
  def cycle(n)
    self.number = '1'
    n.times { self.number = laundromat(self.number) }
    self.number
  end

  private

  def laundromat(a_number)
    a_number.to_s.chars
            .chunk{|n| n}
            .map{|n, sequence| [sequence.count, n]}
            .join
  end
end
