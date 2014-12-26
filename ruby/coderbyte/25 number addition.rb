# Input = "75Number9" Output = 84
# Input = "10 2One Number*1*" Output = 13

def number_addition(str)
  nums = str.gsub(/\D/, " ")
  num_ary = nums.split("")
  clean_ary = remove_extra_spaces(num_ary)
  result_ary = clean_ary.join("").split(" ").map { |e| e.to_i }
  ans = result_ary.reduce(:+)
  ans.nil? ? 0 : ans
end

def remove_extra_spaces(num_ary)
  new_ary = []
  num_ary.each_index do |i|
    if num_ary[i] != " "
      new_ary << num_ary[i]
    else
      new_ary << num_ary[i] if new_ary.last != " "
    end
  end
  new_ary
end

p number_addition("75Number9") == 84
p number_addition("10 2One Number*1*") == 13
p number_addition("no nums sorry") == 0

# turandothime
# def NumberAddition(str)
#   str_nums = str.scan(/\d+/)
#   sum = str_nums.map(&:to_i).reduce(0, :+)
# end

# wendyleung
# def NumberAddition(str)

#   str = str.tr('^0-9', ' ').split(' ')
#   return 0 if str.empty?
#   str.map{|num| num.to_i}.inject(:+)
# end