# frozen_string_literal: true

def staircase(num)
  num.times do |number|
    spaces = num - (number + 1)
    hashes = number + 1
    line = ''
    line += ' ' * spaces if spaces.positive?
    line += '#' * hashes
    puts line
  end

end

staircase(4)
