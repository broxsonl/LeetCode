def count_n_say(n, digits = '1')
  (n - 1).times do 
    result, count, char = '', 0, nil
    digits.each_char.with_index do |c, i|
      char ||= c
      if char == c
        count += 1
      else
        result += count.to_s + char
        char, count = c, 1
      end
      result += count.to_s + c if i == digits.size - 1
    end
    digits = result
  end
  digits
end

puts count_n_say(3)
