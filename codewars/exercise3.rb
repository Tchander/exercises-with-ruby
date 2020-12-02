=begin
In this kata you are required to, given a string,
 replace every letter with its position in the alphabet.

If anything in the text isn't a letter, ignore it and don't return it.
=end

def alphabet_position(text)
  ans = ''
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  flag = false
  text.chars.each do |symbol|
    if symbol.match(/^[[:alpha:]]$/) && flag == true
      ans += " #{alphabet.index(symbol.downcase) + 1}"
    elsif symbol.match(/^[[:alpha:]]$/) && flag == false
      ans += "#{alphabet.index(symbol.downcase) + 1}"
      flag = true
    end
  end
  ans
end

def alphabet_position_BEST(text)
  text.upcase.chars.select { |c| ("A".."Z").include?(c) }
      .map { |c| c.ord-64 } .join(" ")
end

def alphabet_position_BEST2(text)
  text.gsub(/[^a-z]/i, '').chars.map{ |c| c.downcase.ord - 96 }.join(' ')
end

puts alphabet_position("The sunset sets at twelve o' clock.")
# "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
puts alphabet_position("-.-'") # ""