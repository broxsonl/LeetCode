# Given a string containing just the characters '(', ')', '{', '}', '[' and ']',
# determine if the input string is valid.
# The brackets must close in the correct order, "()" and "()[]{}"
# are all valid but "(]" and "([)]" are not.

class Code
  attr_accessor :code, :some

  PARENS = { '}' => '{', ']' => '[', ')' => '(' }
  OPEN   = Regexp.new("[#{PARENS.values.join('\\')}]")
  CLOSE  = Regexp.new("[#{PARENS.keys.join('\\')}]")

  def initialize(str)
    self.code = str
  end

  def valid?
    qeue = []
    code.chars.each do |c|
      case c
      when OPEN  then qeue << c
      when CLOSE
        qeue.last == PARENS[c] ? qeue.pop : (return false)
      end
    end
    qeue.empty?
  end
end

