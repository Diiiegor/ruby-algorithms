# frozen_string_literal: true

def birthdayCakeCandles(candles)
  tallest_candles_counter = 0
  tallest_candle = nil
  candles.each_with_index do |candle, index|
    if index == 0
      tallest_candle = candle
      tallest_candles_counter = 0
    end
    if candle > tallest_candle
      tallest_candles_counter = 0
      tallest_candle = candle
    end
    tallest_candles_counter += 1 if candle == tallest_candle
  end
  tallest_candles_counter

end

puts(birthdayCakeCandles([1, 2, 3, 3, 4, 55,55]))