def plusMinus(arr)
  #here we find and store the fractions for positive,negative and zero numbers
  positive_fraction = (arr.count { |i| i > 0 }).to_f / arr.length
  negative_fraction = (arr.count { |i| i < 0 }).to_f / arr.length
  zero_fraction = (arr.count { |i| i == 0 }).to_f / arr.length

  #Then we convert the fraction to float with 6 decimal places and print them
  # Using this notation "%0.6f" we specify how many decimal places we want to print, in this case 6
  puts "%0.6f" % positive_fraction.round(6)
  puts "%0.6f" % negative_fraction.round(6)
  puts "%0.6f" % zero_fraction.round(6)

end

arr_example = [1, 1, 1, -2, -34, -4, 0, 0]
plusMinus(arr_example)