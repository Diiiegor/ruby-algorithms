def binary_search(array, key)
  from = 0
  to = array.length-1

  while from <= to
    middle = (from + to) / 2
    return middle if array[middle] == key

    if key < array[middle]
      to = middle-1
    else
      from = middle+1
    end
  end
  nil
end

puts "Enter a sorted space-separated list:"
arr = gets.chomp.split(' ').map(&:to_i)

puts "Enter the value to be searched:"
value = gets.chomp.to_i

if binary_search(arr, value) != nil
  puts "Found at index #{binary_search(arr, value)}"
else
  puts "Not found"
end