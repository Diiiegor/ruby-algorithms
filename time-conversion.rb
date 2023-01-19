# frozen_string_literal: true

def timeConversion(s)
  hour = s[0...2]
  minutes = s[3...5]
  seconds = s[6...8]
  middle_indicator = s[8...11]

  hour = '00' if hour == '12' && middle_indicator == 'AM'
  hour = 12 + hour.to_i if hour != '12' && middle_indicator == 'PM'
  "#{hour}:#{minutes}:#{seconds}"
end

puts(timeConversion '06:01:00PM')