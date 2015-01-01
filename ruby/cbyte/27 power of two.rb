def power_of_two(num)
  powers_of_two.include?(num) ? true : false
end

def powers_of_two
  ary = [1]
  100.times { ary << ary.last * 2 }
  ary
end

p power_of_two(4)    # true
p power_of_two(124)  # false

# my solution generates a set array of powers of two each time
# the method is called whereas better solutions uses the input
# to box in how many multiple of 2s to generate, the later only
# generates enough numbers to be equal to or exceed the input by one multiple
# whereas my version will fail if I do not generate a big enough array to
# compare the input with

# turandothime
# def PowersofTwo(num)
#   i = 0
#   until (2 ** i) > num
#     return true if num == (2 ** i)
#     i += 1
#   end
#   return false
# end


# gururuby
# def PowersofTwo(num)
#   two = 2
#   while two < num
#     two *= 2
#   end
#   if two == num
#     return true
#   else
#     return false
#   end
# end