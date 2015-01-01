def additive_persistence(num)
  result = 0
  str = num.to_s.split("")
  until str.length == 1
    result += 1
    new_str = sum_string(str)
    str = new_str.to_s.split("")
  end
  result
end

def sum_string(str)
  str_num = []
  # str_num = str.map( { |e| e.to_i }) this is the same as line 15
  str_num = str.map(&:to_i)
  str_num.reduce(:+)
end


p additive_persistence(4)   # 0
p additive_persistence(19)   # 2


# turandothime
# def AdditivePersistence(num)
#   digits = num.to_s.split('').map(&:to_i)
#   i = 0
#   until digits.size == 1
#     digits = digits.reduce(:+).to_s.split('').map(&:to_i)
#     i += 1
#   end
#   i
# end

