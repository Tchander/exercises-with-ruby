=begin
  Digital root is the recursive sum of all the digits in a number.

  Given n, take the sum of the digits of n.
  If that value has more than one digit, continue reducing in this
  way until a single-digit number is produced. The input will be a
  non-negative integer.
=end

def digital_root(n)
  while n > 9 do
    str = n.to_s
    n = 0
    str.chars.each do |digit|
      n += digit.to_i
    end
  end
  n
end

def digital_root_BEST(n)
  n < 10 ? n : digital_root(n / 10 + n % 10)
end

puts digital_root(16) # 7
puts digital_root(942) # 6
puts digital_root(132189) # 6
puts digital_root(493193) # 2
puts digital_root(999999999999) # 2