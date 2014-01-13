=begin

Problem 4
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.

=end

highest = 0

for x in -999..-1
  for y in -999..-1
    multi = y * x
    length = multi.to_s.length
    if multi.to_s[0..(length/2-1)] == multi.to_s[(length/2)..(length-1)].reverse
      highest = multi if multi > highest
    end
  end
end

puts highest