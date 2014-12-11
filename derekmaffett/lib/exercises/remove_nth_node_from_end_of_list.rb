module LeetCode
  # Adding the solution for the leetcode problem. It relies on the existent
  # structure of a singly linked list.
  class SingleList
    def remove_nth_from_end(n)
      remove_nth(@size - n + 1)
    end
  end
end
