def stock_picker(array) 
  day = {'profit' => 0, 'bs_day' => [0, 0]}
  b = 0
  s = b + 1
  array.each do |b_day|
    while s < array.length do
      s_day = array[s]
      profit = s_day - b_day
      if profit > day['profit']
        day['profit'] = profit
        day['bs_day'] = [b, s]
      end
      s += 1
    end
    b += 1 
    s = b + 1
  end
  return day['bs_day']
end
