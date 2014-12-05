# The count-and-say sequence is the sequence of integers beginning as follows:
# 1, 11, 21, 1211, 111221, ...

# 1 is read off as "one 1" or 11.
# 11 is read off as "two 1s" or 21.
# 21 is read off as "one 2, then one 1" or 1211.
# Given an integer n, generate the nth sequence.

# Note: The sequence of integers will be represented as a string.

class CountSay
  attr_reader :seed

  def initialize
    @seed = 1
  end

  def cycle(n)
    n.times { @seed = laundromat(@seed) }
    @seed
  end

  private

  def laundromat(x)
    x.to_s.chars.map(&:to_i)
                .chunk{|n| n}
                .map{|number, sequence| [sequence.count, number]}
                .join.to_i
  end
end
