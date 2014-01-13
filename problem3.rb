=begin
Problem 3
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

find prime numbers < 600,851,475,143
then loop through primes backwards dividing 600851475143 until mod = 0

=end

factors = []

#Only need iterate as high as the square root of the target number
for x in 3...Math.sqrt(600851475143)
  #puts x
  skip = 0

  #Skip even numbers
  next if x % 2 == 0

  #Skip if factor isn't a prime
  factors.each do |f|
    if x % f == 0
      skip = 1
      break
    end
  end
  next if skip == 1

  #Add prime factors to array
  if 600851475143 % x == 0
    factors << x
    puts x
  end
end

puts factors