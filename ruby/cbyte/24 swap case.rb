def swap_case(str)
  ary = str.split("")
  new_ary = []
  ary.each do |x|
    if x == "-" || x == " "
      new_ary << x
    elsif /[[:upper:]]/.match(x) != nil
      new_ary << x.downcase
    else
      new_ary << x.upcase
    end
  end
  new_ary.join("")
end

p swap_case("HELLO world")

#split string to ary


# turandothime
# def SwapCase(str)
#  str.swapcase
# end