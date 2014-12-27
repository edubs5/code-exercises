# Using the Ruby language, have the function MeanMode(arr) take the array of
# numbers stored in arr and return 1 if the mode equals the mean, 0
# if they don't equal each other (ie. [5, 3, 3, 3, 1] should return 1
#   because the mode (3) equals the mean (3)). The array will not be empty,
# will only contain positive integers, and will not contain more than one mode.

# Use the Parameter Testing feature in the box below to test your code with different arguments.

def mean_mode(ary)
  avg = find_avg(ary)
  mode = find_mode(ary)

  avg == mode ? 1 : 0
end

def find_avg(ary)
  ary.reduce(:+)/ary.length
end

def find_mode(ary)
  uniq_num = ary.uniq
  hash = {}
  # alternate hash = Hash[uniq_num.map{|k,v| [k,0]}]
  uniq_num.each { |num| hash[num] = 0 }
  ary.each do |num|
    hash.each do |k, v|
      hash[k] += 1 if k == num
    end
  end
  # alternate max_pair = hash.select {|k,v| v == hash.values.max }
  max_value = 0
  hash.each { |k,v| max_value = k if v == hash.values.max }
  max_value
end

# Input = 1, 2, 3 Output = 0
# Input = 4, 4, 4, 6, 2 Output = 1

p mean_mode([4,4,4,6,2])
p mean_mode([1,2,3])


# turandothime
# def MeanMode(arr)
#   mode = arr.max_by { |x| arr.count(x) }
#   mean = arr.reduce(0, :+) / arr.size

#   mode == mean ? 1 : 0
# end