# # Determine whether an integer is a palindrome. Do this without extra space.

def reverse(number)
  reversed = 0
  while number > 0
    last_digit = number % 10
    reversed   = reversed * 10 + last_digit
    number     = (number - last_digit) / 10
  end
  reversed
end

def palindrome?(number)
  reverse(number) == number
end
