# frozen_string_literal: true

def quicksort(arr)
  return [] if arr.empty?

  break_point = arr.delete_at(rand(arr.length))
  left_part, right_part = arr.partition { |item| item < break_point }
  [*quicksort(left_part), break_point, *quicksort(right_part)]
end

test_arr = [5, 1, 5, 22, 1, 2, 5, 6, 77]
puts quicksort(test_arr)
