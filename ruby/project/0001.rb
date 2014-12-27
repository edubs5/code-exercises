def calc_sum(limit, num1, num2)
  ary = []
  i = 1
  while i < limit
    ary << i if i % 3 == 0 || i % 5 == 0
    i += 1
  end
  ary.reduce(:+)
end


p calc_sum(1000, 3, 5) == 233168