def multiplicative_persistence(num)
  result = 0
  str = num.to_s.split("").map(&:to_i)
  until str.length == 1
    result += 1
    new_str = str.reduce(:*)
    str = new_str.to_s.split("").map(&:to_i)
  end
  result
end


p multiplicative_persistence(4)     # 0
p multiplicative_persistence(25)     # 2


# turandothime
# def MultiplicativePersistence(num)
#   digits = num.to_s.split('').map(&:to_i)
#   i = 0
#   until digits.size == 1
#     digits = digits.reduce(:*).to_s.split('').map(&:to_i)
#     i += 1
#   end
#   i
# end