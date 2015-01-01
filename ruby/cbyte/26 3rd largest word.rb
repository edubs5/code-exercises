# Input = "coder","byte","code"     Output = "code"
# Input = "abc","defg","z","hijk"   Output = "abc"

def third_greatest(ary)
  hash = Hash[ary.map { |k| [k, k.split("").count] }]
  deleted = 0
  max = hash.values.max
  result = remove_two(hash, deleted, max)
  result.max_by { |k,v| v }[0]
end

def remove_two(hash, deleted, max)
  deleted = deleted
  with_max = hash.select { |k,v| k if v == max }
  max_count = with_max.count
  first_key = with_max.first[0]
  if deleted < 2
    hash.delete(first_key)
    deleted += 1
    max = hash.values.max
    remove_two(hash, deleted, max)
  end
  hash
end


# p third_greatest(["coder", "byte", "code"])
# p third_greatest(["abc","defg","z","hijk"])
# p third_greatest(["two","three","four"])
# p third_greatest(["as","assssvvvvt","affggg"])
# p third_greatest(["jk","lmn","opqrst"])
p third_greatest(["hello","world","world"])  # does not work because hash cannot have the same key

# 1. When the input was ("hello","world","world") your output was incorrect.
# 2. When the input was ("bat","cat","mat") your output was incorrect.
# 3. When the input was ("bt","ct","mtyyyy") your output was incorrect.

# mike617
# def ThirdGreatest(strArr)
#   sorted=strArr.sort{|x,y| y.length <=> x.length}
#   last=sorted[2]
#   strArr.each do |term|
#     if term.length==last.length && strArr.index(term)> strArr.index(last)
#       last=term
#     end
#   end
#   last
# end

#turandothime
# def ThirdGreatest(strArr)
#   arr = strArr.dup
#   2.times { arr.slice!(arr.index(arr.max_by(&:length))) }
#   arr.max_by(&:length)
# end

# wendyleung
# def ThirdGreatest(strArr)
#   2.times do
#     strArr.delete_at(Greatest(strArr))
#   end

#   strArr[Greatest(strArr)]
# end

# def Greatest(strArr)
#   max = 0
#   max_idx = 0

#   strArr.each_with_index do |element, idx|
#     if element.size > max
#       max = element.size
#       max_idx = idx
#     end
#   end
#   max_idx
# end

# sepp2k
# def ThirdGreatest(strArr)

#   third_largest_length = strArr.sort_by(&:length)[-3].length
#   return strArr.select {|s| s.length == third_largest_length}[-1]

# end