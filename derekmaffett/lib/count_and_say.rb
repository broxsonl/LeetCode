module LeetCode
  module CountSay
    def CountSay.count_and_say(num)
      return '1' if num == 1

      current_sequence = '1'
      (num - 1).times { current_sequence = next_sequence(current_sequence) }
      current_sequence
    end

    def CountSay.next_sequence(number)
      next_sequence = ''
      while number.size > 0
        category = number[0]
        group, number = number.split(/(?!#{category})/, 2)
        next_sequence << say(group.size, category.to_i)
      end
      next_sequence
    end

    def CountSay.say(count, number)
      "#{count}#{number}"
    end
  end
end
