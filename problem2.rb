=begin
Problem 2
Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
=end

x = 1
y = 2
z = 0

even_sum = 0

until x >= 4000000 && y >= 4000000 && z >= 4000000
  puts x
  puts y
  puts z

  if x < 4000000 && x % 2 == 0
    even_sum += x
  elsif y < 4000000 && y % 2 == 0
    even_sum += y
  elsif z < 4000000 && z % 2 == 0
    even_sum += y
  end

  z = x + y
  x = y + z
  y = z + x
end

puts "Even Sum " + even_sum.to_s