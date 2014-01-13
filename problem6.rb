=begin

Problem 6
The sum of the squares of the first ten natural numbers is,

1^2 + 2^2 + ... + 10^2 = 385
The square of the sum of the first ten natural numbers is,

1^2 + ... 100^2 = 338350

(1 + 2 + ... + 10)^2 = 55^2 = 3025

1..100 = 25502500
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

=end

sum = 0

for x in 1..100
  puts x*x
  sum += x*x
end

puts sum

sum2 = 0

for x in 1..100
  puts x
  sum2 += x
end

puts sum2*sum2

puts (sum2*sum2) - sum