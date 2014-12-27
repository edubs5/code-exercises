# Using the Ruby language, have the function DashInsert(str) insert
# dashes ('-') between each two odd numbers in str.
# For example: if str is 454793 the output should be 4547-9-3.
# Don't count zero as an odd number.

# split string up into single numbers array
# array.each
# if elem is even, add to new ary
# else check last member of new ary
# if last member is even add a dash then add elem
# if last member is odd then add number
# join new ary

def dash_insert(str)
  ary = str.split("")
  num_ary = ary.map { |element| element.to_i }
  new_ary = []
  new_ary << num_ary.shift(1)[0]
  num_ary.each { |element| element.to_f % 2 == 0 ? new_ary << element : add_dash_for_odd(element, new_ary) }
  new_ary.join("")
end

def add_dash_for_odd(element, new_ary)
  new_ary.last.to_i.odd? ? new_ary << "-" << element : new_ary << element
end

p dash_insert("4568701")
p dash_insert("99946") == "9-9-946"
p dash_insert("56730") == "567-30"

# r3doc
# def DashInsert(numbers)
#   numbers_array = numbers.to_s.split('')
#   numbers_array.each_index do |index|
#     numbers_array[index].concat('-') if numbers_array[index].to_i.odd? && numbers_array[index + 1].to_i.odd?
#   end.join
# end

# turandothime
# def DashInsert(num)
#   num_str = num.to_s
#   num_str.gsub(/([13579])(?=[13579])/, '\1-')
# end