def off_line_min(ary)
  ans = []
  temp_ary = []
  ary.each do |element|
    min = 0
    temp_ary << element
    if temp_ary.last == "E"
      temp_ary.delete_if{ |x| x == "E" }
      min = temp_ary.min_by{ |n| n.to_i }
      temp_ary.delete_if{ |y| y == min }
      ans << min
    end
  end
  ans.join(",")
end


p off_line_min(["1", "2", "E", "E", "3"])     # "1, 2"
p off_line_min(["4", "E", "1", "E", "2", "E", "3", "E"])     # "4,1,2,3"


# turandothime
# def OffLineMinimum(strArr)
#   result = []
#   arr = strArr.dup
#   arr.count("E").times do
#     result << min = arr.take_while { |x| x != 'E' }.min
#     arr.slice!(arr.index("E"))
#     arr.slice!(arr.index(min))
#   end
#   return result.join(',')
# end