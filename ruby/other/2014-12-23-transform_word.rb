# Q 1. Given a word, write a function to transform it in the following manner:
# Replace each character in the word as, c(i) =c(i) + i +1, where c(i) is the ASCII value of the character at position i. For example:  A + 1 = B; A + 2 = C; A + 3 = D
# If c(i) + i > z, then circle back from A. For example:  Z + 1 = A; Y + 2 = A; X + 7 = E

# f a u l t y
# + + + + + +
# 1 2 3 4 5 6

# g c x p y e

# Examples:
# 1) faulty
# Returns: gcxpye

# 2) loophole
# Returns: mqrtmusm

def transform_word(str)
  ary = str.split("")
  ary_nums = convert_to_ascii(ary)
  new_nums = add_i(ary_nums)
  new_ary = convert_to_letters(new_nums)
end

def convert_to_ascii(ary)
  numbers = []
  ary.each { |num| numbers << num.ord }
  numbers
end

def add_i(num_ary)
  new_ary = num_ary.each_index { |x| num_ary[x] += 1 + x }
  new_ary.each_index { |x| new_ary[x] = new_ary[x] - 26 if new_ary[x] > 122 }
  new_ary
end

def convert_to_letters(num_ary)
  result = []
  num_ary.each { |x| result << x.chr }
  result.join("")
end

p transform_word("faulty") == "gcxpye"
p transform_word("loophole") == "mqrtmusm"