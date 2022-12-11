def diagonal_difference(arr)

  # We declare the variables to store the sums of the diagonals
  diagonal_1 = 0
  diagonal_2 = 0

  # We go through the rows of the matrix
  arr.each_with_index { |row, index|
    # If we find a row that breaks the square matrix rule, we eliminate it and run the function again.
    if row.length != arr.length
      arr.delete_at(index)
      return diagonal_difference(arr)
    else
      # If the row meets the conditions to be a square matrix we add its diagonals
      diagonal_1 += row[index]
      diagonal_2 += row[(row.length) - (index + 1)]
    end
  }

  (diagonal_1 - diagonal_2).abs

end

example_array = [[3], [11, 2, 4], [4, 5, 6], [10, 8, -12]]
puts diagonal_difference(example_array)