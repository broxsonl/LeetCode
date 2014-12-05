# # Determine whether an integer is a palindrome. Do this without extra space.

def palindrome?(number)
  tmp = number
  reversed = 0
  while tmp > 0
    last_digit = tmp % 10
    reversed = (reversed + last_digit) * 10
    tmp = (tmp - last_digit)/10
  end
  reversed/10 == number
end
