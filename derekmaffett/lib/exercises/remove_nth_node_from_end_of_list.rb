module LeetCode
  class SingleList
    def remove_nth_from_end(n)
      remove_nth(@size - n + 1)
    end
  end
end
