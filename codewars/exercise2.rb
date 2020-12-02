=begin
Welcome. In this kata, you are asked to square every digit of
 a number and concatenate them.

For example, if we run 9119 through the function,
 811181 will come out, because 92 is 81 and 12 is 1.

Note: The function accepts an integer and returns an integer
=end

def square_digits num
  str = num.to_s
  array = []
  str.chars.each do |digit|
    array << digit.to_i * digit.to_i
  end
  num = array.join.to_i
end

def square_digits_BEST num
  num.to_s.chars.map{|x| x.to_i**2}.join.to_i
end

puts square_digits(3212) # 9414
puts square_digits(2112) # 4114
puts square_digits(1111) # 1111
puts square_digits(1234321) # 14916941
puts square_digits(0) # 0
