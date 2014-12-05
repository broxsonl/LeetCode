# Reverse digits of an integer.
# Example1: x = 123, return 321
# Example2: x = -123, return -321

def reverse(number)
  fail ArgumentError unless number.is_a? Fixnum
  (number < 0 ? -1 : 1) * number.to_s.reverse.to_i
end

p reverse(-123)
p reverse(123)
