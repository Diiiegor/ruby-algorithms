# frozen_string_literal: true

def min_max_sum(arr)
  sorted_array = quicksort(arr)
  min_sum = sorted_array[0...4].inject(0, :+)
  max_sum = sorted_array[1...5].inject(0, :+)
  puts "#{min_sum} #{max_sum}"
end

def quicksort(arr)
  return [] if arr.empty?

  break_point = arr.delete_at(rand(arr.length))
  left_part, right_part = arr.partition { |item| item < break_point }
  [*quicksort(left_part), break_point, *quicksort(right_part)]
end

min_max_sum([1, 2, 3, 4, 5])
